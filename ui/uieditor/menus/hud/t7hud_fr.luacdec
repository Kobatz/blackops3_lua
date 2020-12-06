-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_InfoContainer")
require("ui.uieditor.widgets.Freerun.FR_DpadContainer")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMPContainer")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_Container")
require("ui.uieditor.widgets.Freerun.FR_NotificationFlashes")
require("ui.uieditor.widgets.Freerun.FR_TopScoreContainer")
require("ui.uieditor.widgets.Freerun.FR_TimerContainer")
require("ui.uieditor.widgets.Freerun.FR_DistanceBarContainer")
require("ui.uieditor.widgets.Chat.inGame.IngameChatClientContainer")
require("ui.uieditor.widgets.Freerun.FR_Checkpoint")
CoD.FreerunUtility = {}
CoD.FreerunUtility.FR_STATE_PRESTART = 0.000000
CoD.FreerunUtility.FR_STATE_RUNNING = 1.000000
CoD.FreerunUtility.FR_STATE_FINISHED = 2.000000
CoD.FreerunUtility.FR_STATE_PAUSED = 3.000000
CoD.FreerunUtility.FR_STATE_QUIT = 4.000000
CoD.FreerunUtility.FR_STATE_DIALOG = 5.000000
local function __FUNC_5B6_(arg0, arg1, arg2, arg3, arg4)
	return ((((arg0 - arg1) + (arg2 * 1000.000000)) + (arg3 * 5000.000000)) - arg4)
end

local function __FUNC_606_(arg0, arg1)
	local registerVal2 = LUI.UITimer.new(1.000000, "update_game_timer", false)
	arg0:addElement(registerVal2)
	arg0._timer = registerVal2
	local function __FUNC_914_()
		arg0._timer:close()
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_914_)
	local function __FUNC_977_(arg0, arg2)
		local registerVal2 = Engine.GetModelForController(arg1)
		local registerVal3 = Engine.GetModel(registerVal2, "FreeRun")
		local registerVal4 = Engine.GetModel(registerVal3, "runState")
		local registerVal5 = Engine.GetModel(registerVal3, "startTime")
		local registerVal6 = Engine.GetModel(registerVal3, "pausedTime")
		local registerVal7 = Engine.GetModel(registerVal3, "freeRunInfo")
		local registerVal8 = Engine.GetModel(registerVal7, "bulletPenalty")
		local registerVal9 = Engine.GetModel(registerVal7, "retries")
		local registerVal10 = Engine.GetModelValue(registerVal5)
		local registerVal11 = Engine.GetModelValue(registerVal6)
		local registerVal12 = Engine.GetModelValue(registerVal4)
		local registerVal13 = Engine.GetModelValue(registerVal8)
		local registerVal14 = Engine.GetModelValue(registerVal9)
		local registerVal15 = Engine.GetModel(registerVal3, "timer")
		local registerVal16 = Engine.GetModel(registerVal15, "currentTime")
		if registerVal5 and registerVal4 and registerVal10 ~= nil and registerVal10 ~= 0.000000 then
			if registerVal12 == CoD.FreerunUtility.FR_STATE_RUNNING then
				local registerVal17 = Engine.CurrentGameTime()
				local registerVal18 = __FUNC_5B6_(registerVal17, registerVal10, registerVal13, registerVal14, registerVal11)
				if registerVal18 < 0.000000 then
				end
				Engine.SetModelValue(registerVal16, 0.000000)
			else
				if registerVal12 ~= CoD.FreerunUtility.FR_STATE_FINISHED and registerVal12 == CoD.FreerunUtility.FR_STATE_QUIT or registerVal12 == CoD.FreerunUtility.FR_STATE_DIALOG then
					registerVal17 = Engine.GetModel(registerVal3, "finishTime")
					if registerVal17 then
						registerVal18 = Engine.GetModelValue(registerVal17)
						Engine.SetModelValue(registerVal16, registerVal18)
					else
						if registerVal12 == CoD.FreerunUtility.FR_STATE_PAUSED then
							registerVal17 = Engine.CurrentGameTime()
							registerVal18 = __FUNC_5B6_(registerVal17, registerVal10, registerVal13, registerVal14, registerVal11)
							if registerVal18 < 0.000000 then
							else
								Engine.SetModelValue(registerVal16, 0.000000)
							end
						end
					end
				end
			end
		end
	end

	arg0:registerEventHandler("update_game_timer", __FUNC_977_)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "FreeRun.runState")
	local function __FUNC_F04_(arg2)
		if arg2 then
			local registerVal1 = Engine.GetModelValue(arg2)
			if registerVal1 == CoD.FreerunUtility.FR_STATE_PRESTART then
				local registerVal3 = Engine.GetModelForController(arg1)
				local registerVal2 = Engine.CreateModel(registerVal3, "FreeRun.freeRunInfo.activeCheckpoint")
				Engine.SetModelValue(registerVal2, -1.000000)
				SetState(arg0, "DefaultState")
			else
				if registerVal1 == CoD.FreerunUtility.FR_STATE_RUNNING then
					SetState(arg0, "DefaultState")
				else
					if registerVal1 == CoD.FreerunUtility.FR_STATE_FINISHED then
						SetState(arg0, "GameEnded")
					else
						if registerVal1 == CoD.FreerunUtility.FR_STATE_QUIT then
							SetState(arg0, "GameQuit")
						else
							registerVal2 = Engine.IsDemoPlaying()
							if registerVal1 == CoD.FreerunUtility.FR_STATE_DIALOG and not registerVal2 then
								Engine.LockInput(arg1, true)
								CoD.OverlayUtility.CreateOverlay(arg1, arg0, "FreerunEndGamePopup")
							end
						end
					end
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_F04_)
	local registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.CreateModel(registerVal5, "FreeRun.freeRunInfo.activeCheckpoint")
	local function __FUNC_1311_(arg0)
		if arg0 then
			local registerVal2 = Engine.GetModelForController(arg1)
			local registerVal1 = Engine.CreateModel(registerVal2, "FreeRun.timer.timeAdjustment")
			Engine.ForceNotifyModelSubscriptions(registerVal1)
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_1311_)
	local registerVal6 = Engine.GetModelForController(arg1)
	registerVal5 = Engine.CreateModel(registerVal6, "FreeRun.timer.timeAdjustmentNegative")
	local function __FUNC_141D_(arg0)
		if arg0 then
			local registerVal2 = Engine.GetModelForController(arg1)
			local registerVal1 = Engine.CreateModel(registerVal2, "FreeRun.timer.timeAdjustment")
			Engine.ForceNotifyModelSubscriptions(registerVal1)
		end
	end

	arg0:subscribeToModel(registerVal5, __FUNC_141D_)
end

local function __FUNC_1529_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("T7Hud_FR")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "T7Hud_FR.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -309.560000, 1650.440000)
	registerVal3:setTopBottom(true, false, -250.000000, -122.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.EndTop = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -309.560000, 1650.440000)
	registerVal4:setTopBottom(true, false, 874.000000, 1002.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.EndBottom = registerVal4
	local registerVal5 = CoD.FR_InfoContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 41.000000, 343.000000)
	registerVal5:setTopBottom(true, false, 31.170000, 231.170000)
	registerVal1:addElement(registerVal5)
	registerVal1.FRInfoContainer = registerVal5
	local registerVal6 = CoD.FR_DpadContainer.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 41.000000, 299.500000)
	registerVal6:setTopBottom(false, true, -135.430000, -27.310000)
	registerVal1:addElement(registerVal6)
	registerVal1.FRDpadContainer = registerVal6
	local registerVal7 = CoD.AmmoWidgetMPContainer.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -425.000000, -27.000000)
	registerVal7:setTopBottom(false, true, -156.000000, -32.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.AmmoWidgetContainer = registerVal7
	local registerVal8 = CoD.ScrStk_Container.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -130.540000, -22.000000)
	registerVal8:setTopBottom(false, true, -303.410000, -128.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setXRot(15.000000)
	registerVal8:setYRot(-40.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "HudStart"
	local function __FUNC_2ECE_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg0, "hudItems.playerSpawned")
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_2ECE_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, "hudItems.playerSpawned")
	local function __FUNC_3519_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.playerSpawned"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3519_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_3644_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3644_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_37CE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_37CE_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_395D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_395D_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_3AE7_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3AE7_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_3C6D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3C6D_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_3E04_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3E04_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_3F9B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_3F9B_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_4121_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4121_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_42AE_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_42AE_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_4434_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4434_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_45BC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_45BC_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_4745_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4745_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_48D4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_48D4_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_4A62_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4A62_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_4BFA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4BFA_)
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.profileSettingsUpdated")
	local function __FUNC_4D81_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4D81_)
	registerVal1:addElement(registerVal8)
	registerVal1.ScrStkContainer = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1040.950000, 1268.000000)
	registerVal9:setTopBottom(true, false, 627.000000, 685.000000)
	registerVal9:setRGB(0.750000, 0.850000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(-8.000000)
	registerVal9:setImage(RegisterImage("uie_radial_gradient"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.AmmoWidgetFlash = registerVal9
	local registerVal10 = CoD.FR_NotificationFlashes.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 295.530000, 970.530000)
	registerVal10:setTopBottom(true, false, 494.670000, 601.670000)
	registerVal1:addElement(registerVal10)
	registerVal1.FRNotificationFlashes = registerVal10
	registerVal11 = CoD.FR_TopScoreContainer.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 362.000000, 918.000000)
	registerVal11:setTopBottom(true, false, 202.670000, 494.670000)
	registerVal11:setAlpha(0.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Invisible"
	local function __FUNC_4EB6_(arg1, arg2, arg3)
		local registerVal3 = IsFreeRunFinished(arg0)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_4EB6_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "FreeRun.runState")
	local function __FUNC_4F0F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.runState"
		registerVal1:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_4F0F_)
	registerVal1:addElement(registerVal11)
	registerVal1.FRTopScoreContainer = registerVal11
	registerVal12 = CoD.FR_TimerContainer.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -145.500000, 145.500000)
	registerVal12:setTopBottom(true, false, 31.170000, 130.170000)
	registerVal1:addElement(registerVal12)
	registerVal1.FRTimerContainer = registerVal12
	local registerVal13 = CoD.FR_DistanceBarContainer.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 396.940000, 943.940000)
	registerVal13:setTopBottom(true, false, -0.330000, 60.670000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.FRDistanceBarContainer = registerVal13
	registerVal14 = CoD.IngameChatClientContainer.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal14:setTopBottom(true, false, -2.500000, 717.500000)
	registerVal1:addElement(registerVal14)
	registerVal1.IngameChatClientContainer = registerVal14
	registerVal15 = CoD.FR_Checkpoint.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 131.170000, 282.170000)
	registerVal1:addElement(registerVal15)
	registerVal1.FRCheckpoint = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_5032_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal1.EndTop:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.EndBottom:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		local function __FUNC_5291_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.FRInfoContainer:setAlpha(0.000000)
		__FUNC_5291_(registerVal5, {})
		local function __FUNC_5445_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.FRDpadContainer:setAlpha(0.000000)
		__FUNC_5445_(registerVal6, {})
		local function __FUNC_55F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.FRTimerContainer:setAlpha(0.000000)
		__FUNC_55F9_(registerVal12, {})
	end

	registerVal17.DefaultClip = __FUNC_5032_
	local function __FUNC_57AD_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal17.Penalty = __FUNC_57AD_
	local function __FUNC_580E_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal17.FaultAnim = __FUNC_580E_
	local function __FUNC_586E_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal17.RetryAnim = __FUNC_586E_
	local function __FUNC_58CE_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal17.SetCheckpointDelta = __FUNC_58CE_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_592E_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_5C04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -309.560000, 1650.440000)
			arg0:setTopBottom(true, false, -250.000000, 360.000000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.EndTop:setLeftRight(true, false, -309.560000, 1650.440000)
		registerVal1.EndTop:setTopBottom(true, false, -250.000000, -122.000000)
		registerVal1.EndTop:setAlpha(0.400000)
		__FUNC_5C04_(registerVal3, {})
		local function __FUNC_5E29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -309.560000, 1650.440000)
			arg0:setTopBottom(true, false, 360.000000, 1002.000000)
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.EndBottom:setLeftRight(true, false, -309.560000, 1650.440000)
		registerVal1.EndBottom:setTopBottom(true, false, 874.000000, 1002.000000)
		registerVal1.EndBottom:setAlpha(0.400000)
		__FUNC_5E29_(registerVal4, {})
		local function __FUNC_604D_(arg0, arg1)
			local function __FUNC_61A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_61A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61A4_)
		end

		registerVal5:completeAnimation()
		registerVal1.FRInfoContainer:setAlpha(1.000000)
		__FUNC_604D_(registerVal5, {})
		local function __FUNC_6359_(arg0, arg1)
			local function __FUNC_64B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_64B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64B0_)
		end

		registerVal6:completeAnimation()
		registerVal1.FRDpadContainer:setAlpha(1.000000)
		__FUNC_6359_(registerVal6, {})
	end

	registerVal17.DefaultClip = __FUNC_592E_
	registerVal16.GameEnded = registerVal17
	registerVal17 = {}
	local function __FUNC_6665_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_6804_(arg0, arg1)
			local function __FUNC_695C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_695C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_695C_)
		end

		registerVal5:completeAnimation()
		registerVal1.FRInfoContainer:setAlpha(1.000000)
		__FUNC_6804_(registerVal5, {})
		local function __FUNC_6B11_(arg0, arg1)
			local function __FUNC_6C68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6C68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C68_)
		end

		registerVal6:completeAnimation()
		registerVal1.FRDpadContainer:setAlpha(1.000000)
		__FUNC_6B11_(registerVal6, {})
		local function __FUNC_6E1D_(arg0, arg1)
			local function __FUNC_6F74_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6F74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F74_)
		end

		registerVal12:completeAnimation()
		registerVal1.FRTimerContainer:setAlpha(1.000000)
		__FUNC_6E1D_(registerVal12, {})
	end

	registerVal17.DefaultClip = __FUNC_6665_
	registerVal16.GameQuit = registerVal17
	registerVal1.clipsPerState = registerVal16
	registerVal8.id = "ScrStkContainer"
	local registerVal18 = {}
	registerVal18.name = "menu_loaded"
	registerVal18.controller = arg0
	registerVal1:processEvent(registerVal18)
	registerVal18 = {}
	registerVal18.name = "update_state"
	registerVal18.menu = registerVal1
	registerVal1:processEvent(registerVal18)
	registerVal16 = registerVal1:restoreState()
	if not registerVal16 then
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg0
		registerVal1.ScrStkContainer:processEvent(registerVal18)
	end
	local function __FUNC_7129_(arg1)
		arg1.FRInfoContainer:close()
		arg1.FRDpadContainer:close()
		arg1.AmmoWidgetContainer:close()
		arg1.ScrStkContainer:close()
		arg1.FRNotificationFlashes:close()
		arg1.FRTopScoreContainer:close()
		arg1.FRTimerContainer:close()
		arg1.FRDistanceBarContainer:close()
		arg1.IngameChatClientContainer:close()
		arg1.FRCheckpoint:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "T7Hud_FR.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_7129_)
	if __FUNC_606_ then
		__FUNC_606_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.T7Hud_FR = __FUNC_1529_
