-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_HeroWeaponAnimation")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityRouletteOverlay")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityThiefOverlay")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMPContainer = registerVal1
function CoD.AmmoWidgetMPContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMPContainer)
	registerVal2.id = "AmmoWidgetMPContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal3:setXRot(15.000000)
	registerVal3:setYRot(-40.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "HudStartGun"
	local function __FUNC_2332_(arg0, arg2, arg3)
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
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsGameTypeEqualToString("gun")
				if not registerVal3 then
					registerVal3 = IsGameTypeEqualToString("prop")
				else
				end
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_2332_
	local registerVal8 = {}
	registerVal8.stateName = "HudStartClassic"
	local function __FUNC_29A1_(arg0, arg2, arg3)
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
			registerVal3 = IsSpectatingInvalidPlayer(arg1)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = ShouldUseClassicHud(arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_29A1_
	local registerVal9 = {}
	registerVal9.stateName = "HudStart"
	local function __FUNC_3015_(arg0, arg2, arg3)
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
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = IsSpectatingInvalidPlayer(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_3015_
	local registerVal10 = {}
	registerVal10.stateName = "HudPause"
	local function __FUNC_365C_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "hudItems.playerSpawned")
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			if not registerVal3 then
				registerVal3 = IsSpectatingInvalidPlayer(arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_365C_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "hudItems.playerSpawned")
	local function __FUNC_37C4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_37C4_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_38F0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_38F0_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_3A7A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3A7A_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_3C09_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3C09_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_3D93_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3D93_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_3F19_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_3F19_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_40B0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_40B0_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_4247_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4247_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_43CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_43CD_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_455A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_455A_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_46E0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_46E0_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_4868_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4868_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_49F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_49F1_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_4B80_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4B80_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_4D0E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4D0E_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_4EA6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_4EA6_)
	local function __FUNC_502D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "clientNum", true, __FUNC_502D_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "deadSpectator.playerIndex")
	local function __FUNC_514B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_514B_)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidget = registerVal3
	local registerVal4 = CoD.AmmoWidgetMP_HeroWeaponAnimation.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 306.000000, 404.000000)
	registerVal4:setTopBottom(true, false, 43.000000, 141.000000)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "HudStart"
	local function __FUNC_5277_(arg0, arg2, arg3)
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
			registerVal3 = IsSpectatingInvalidPlayer(arg1)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = HideSpecialistAbilityContainer(arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_5277_
	registerVal9 = {}
	registerVal9.stateName = "HudPause"
	local function __FUNC_58F8_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "hudItems.playerSpawned")
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = IsSpectatingInvalidPlayer(arg1)
			if not registerVal3 and not registerVal3 then
				registerVal3 = HideSpecialistAbilityContainer(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_58F8_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.playerSpawned")
	local function __FUNC_5A9C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5A9C_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_5BC8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5BC8_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_5D52_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5D52_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_5EE1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_5EE1_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_606B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_606B_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_61F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_61F1_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_6388_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6388_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_651F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_651F_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_66A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_66A5_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_6832_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6832_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_69B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_69B8_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_6B40_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6B40_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_6CC9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6CC9_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_6E58_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6E58_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_6FE6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_6FE6_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_717E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_717E_)
	local function __FUNC_7305_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientNum"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "clientNum", true, __FUNC_7305_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "deadSpectator.playerIndex")
	local function __FUNC_7423_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_7423_)
	registerVal2:addElement(registerVal4)
	registerVal2.AmmoWidgetMPHeroWeaponAnimation0 = registerVal4
	local registerVal5 = CoD.AmmoWidget_HeroAbilityRouletteOverlay.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 306.000000, 404.000000)
	registerVal5:setTopBottom(true, false, 43.000000, 141.000000)
	registerVal5:setZoom(15.000000)
	registerVal5:setScale(1.200000)
	registerVal2:addElement(registerVal5)
	registerVal2.RouletteOverlay = registerVal5
	registerVal6 = CoD.AmmoWidget_HeroAbilityThiefOverlay.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 398.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal6:setXRot(15.000000)
	registerVal6:setYRot(-40.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.AmmoWidgetHeroAbilityThiefOverlay = registerVal6
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_754F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_754F_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_76BC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_780E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidget:setAlpha(1.000000)
		__FUNC_780E_(registerVal3, {})
		local function __FUNC_79C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(1.000000)
		__FUNC_79C1_(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_76BC_
	local function __FUNC_7B75_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_7CC6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidget:setAlpha(0.000000)
		__FUNC_7CC6_(registerVal3, {})
		local function __FUNC_7E79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(0.000000)
		__FUNC_7E79_(registerVal4, {})
	end

	registerVal8.DefaultState = __FUNC_7B75_
	registerVal7.Invisible = registerVal8
	registerVal8 = {}
	local function __FUNC_802D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
		registerVal2.AmmoWidget:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal4:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal8.DefaultClip = __FUNC_802D_
	local function __FUNC_8284_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
		registerVal2.AmmoWidget:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal4:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal8.DefaultState = __FUNC_8284_
	registerVal7.HideForCodcaster = registerVal8
	registerVal8 = {}
	local function __FUNC_84DC_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_862E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidget:setAlpha(1.000000)
		__FUNC_862E_(registerVal3, {})
		local function __FUNC_87E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(1.000000)
		__FUNC_87E1_(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_84DC_
	local function __FUNC_8995_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8AE6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidget:setAlpha(0.000000)
		__FUNC_8AE6_(registerVal3, {})
		local function __FUNC_8C99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetMPHeroWeaponAnimation0:setAlpha(0.000000)
		__FUNC_8C99_(registerVal4, {})
	end

	registerVal8.DefaultState = __FUNC_8995_
	registerVal7.InvisibleStateCopyForCodCaster = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_8E4D_(arg0, arg2, arg3)
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
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not arg2 or registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
				if not registerVal3 then
					registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
				else
				end
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_8E4D_
	local registerVal11 = {}
	registerVal11.stateName = "HideForCodcaster"
	local function __FUNC_94F1_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_inventory", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_94F1_
	local registerVal12 = {}
	registerVal12.stateName = "InvisibleStateCopyForCodCaster"
	local function __FUNC_95AD_(arg0, arg2, arg3)
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
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not arg2 or registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
				if not registerVal3 then
					registerVal3 = IsCodCaster(arg1)
					if registerVal3 then
						registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_inventory", 1.000000)
					else
					end
				end
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_95AD_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "hudItems.playerSpawned")
	local function __FUNC_9C86_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_9C86_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_9DB0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_9DB0_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_9F3A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_9F3A_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_A0C9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A0C9_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_A253_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A253_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_A3D9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A3D9_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_A570_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A570_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_A707_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A707_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_A88D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_A88D_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_AA1A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_AA1A_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_ABA0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_ABA0_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_AD28_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_AD28_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_AEB1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_AEB1_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_B040_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B040_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_B1CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B1CE_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_B366_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B366_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_B4ED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B4ED_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "factions.isCoDCaster")
	local function __FUNC_B679_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B679_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_B7A2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_B7A2_)
	local function __FUNC_B8D6_(arg0)
		arg0.AmmoWidget:close()
		arg0.AmmoWidgetMPHeroWeaponAnimation0:close()
		arg0.RouletteOverlay:close()
		arg0.AmmoWidgetHeroAbilityThiefOverlay:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B8D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

