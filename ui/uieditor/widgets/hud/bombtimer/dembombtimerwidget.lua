-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemBombTimerWidget = registerVal1
function CoD.DemBombTimerWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemBombTimerWidget)
	registerVal2.id = "DemBombTimerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.backgroundDisabled = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_1B8D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", __FUNC_1B8D_)
	registerVal2:addElement(registerVal5)
	registerVal2.backgroundFriendly = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_1C1F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyColor", __FUNC_1C1F_)
	registerVal2:addElement(registerVal6)
	registerVal2.backgroundEnemy = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 27.000000, 73.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal7)
	registerVal2.BombTimerBackground = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 35.000000, 67.000000)
	registerVal8:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setupBombTimer(0.000000, true)
	registerVal2:addElement(registerVal8)
	registerVal2.BombTimer = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal9:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(Engine.Localize("C"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.AOrBText = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 38.000000, 63.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 23.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("-:--"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.InactiveText = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1CAF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_1CAF_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1D0E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1D0E_
	registerVal11.Hidden = registerVal12
	registerVal12 = {}
	local function __FUNC_208E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_208E_
	registerVal11.HiddenSpectator = registerVal12
	registerVal12 = {}
	local function __FUNC_240E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_240E_
	registerVal11.HiddenNoBombSite = registerVal12
	registerVal12 = {}
	local function __FUNC_278E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(1.000000)
		registerVal2.InactiveText:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.InactiveText:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.InactiveText:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.InactiveText:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
		registerVal2.InactiveText:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.InactiveText:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_278E_
	registerVal11.Inactive = registerVal12
	registerVal12 = {}
	local function __FUNC_2CC9_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2CC9_
	registerVal11.Attacking = registerVal12
	registerVal12 = {}
	local function __FUNC_304F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.backgroundDisabled:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AOrBText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.InactiveText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_304F_
	registerVal11.Defending = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Hidden"
	local function __FUNC_3380_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		if registerVal3 and registerVal3 then
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
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_3380_
	local registerVal15 = {}
	registerVal15.stateName = "HiddenSpectator"
	local function __FUNC_393B_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		return registerVal3
	end

	registerVal15.condition = __FUNC_393B_
	local registerVal16 = {}
	registerVal16.stateName = "HiddenNoBombSite"
	local function __FUNC_3A0B_(arg0, arg1, arg2)
		return true
	end

	registerVal16.condition = __FUNC_3A0B_
	local registerVal17 = {}
	registerVal17.stateName = "Inactive"
	local function __FUNC_3A3C_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_3A3C_
	local registerVal18 = {}
	registerVal18.stateName = "Attacking"
	local function __FUNC_3A70_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "Demolition.defending")
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_3A70_
	local registerVal19 = {}
	registerVal19.stateName = "Defending"
	local function __FUNC_3AEC_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_3AEC_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_3B38_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_3B38_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_3CC2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_3CC2_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_3E51_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_3E51_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_3FDB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_3FDB_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_4161_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4161_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_42F8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_42F8_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_448F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_448F_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_4615_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4615_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_47A2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_47A2_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_4928_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4928_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_4AB0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4AB0_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_4C39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4C39_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_4DC8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4DC8_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_4F56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4F56_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_50EE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_50EE_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_5275_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_5275_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "Demolition.defending")
	local function __FUNC_5401_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Demolition.defending"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_5401_)
	local function __FUNC_552A_(arg0)
		arg0.Panel:close()
		arg0.backgroundFriendly:close()
		arg0.backgroundEnemy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_552A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

