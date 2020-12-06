-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterPlayerFlagStatus")
require("ui.uieditor.widgets.CodCaster.CodCasterEnemyFlagStatus")
require("ui.uieditor.widgets.CodCaster.CodCasterBombTimerWidget")
require("ui.uieditor.widgets.CodCaster.CodCasterDomFlagsWidget")
require("ui.uieditor.widgets.CodCaster.CodCasterHardpointWidget")
require("ui.uieditor.widgets.CodCaster.CodCasterBallStatus")
require("ui.uieditor.widgets.CodCaster.CodCasterRobotStatus")
local function __FUNC_3EA_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "searchAndDestroy.defending")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterHeaderGameModeWidget = registerVal2
local function __FUNC_4AC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_3EA_ then
		__FUNC_3EA_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterHeaderGameModeWidget)
	registerVal2.id = "CodCasterHeaderGameModeWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -223.000000, -5.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal3:setYRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_gamemodebacking"))
	registerVal2:addElement(registerVal3)
	registerVal2.rightB = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 222.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_gamemodebacking"))
	registerVal2:addElement(registerVal4)
	registerVal2.leftBG0 = registerVal4
	local registerVal5 = CoD.CodCasterPlayerFlagStatus.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal5:setTopBottom(true, false, -2.000000, 32.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_1A48_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FriendlyFlagCarrier:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CTF", "friendlyFlagCarrier", __FUNC_1A48_)
	local function __FUNC_1B2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PlayerFlag:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_1B2B_)
	registerVal2:addElement(registerVal5)
	registerVal2.AlliesFlagStatus = registerVal5
	local registerVal6 = CoD.CodCasterEnemyFlagStatus.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 204.000000, 464.000000)
	registerVal6:setTopBottom(true, false, -2.000000, 32.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_1BDB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.FriendlyFlagCarrier:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CTF", "enemyFlagCarrier", __FUNC_1BDB_)
	local function __FUNC_1CBB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.PlayerFlag:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_1CBB_)
	registerVal2:addElement(registerVal6)
	registerVal2.AxisFlagStatus = registerVal6
	local registerVal7 = CoD.CodCasterBombTimerWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -46.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7.BombTimer:setupBombTimer(0.000000, true)
	registerVal7.AOrBText:setText(Engine.Localize("A"))
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "VisibleFriendly"
	local function __FUNC_1D6B_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		return registerVal3
	end

	registerVal11.condition = __FUNC_1D6B_
	local registerVal12 = {}
	registerVal12.stateName = "VisibleEnemy"
	local function __FUNC_1E39_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "searchAndDestroy.defending")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1E39_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A))
	local function __FUNC_1F5F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1F5F_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "searchAndDestroy.defending")
	local function __FUNC_20E7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "searchAndDestroy.defending"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_20E7_)
	registerVal2:addElement(registerVal7)
	registerVal2.BombTimerA = registerVal7
	local registerVal8 = CoD.CodCasterBombTimerWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, 0.000000, 47.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.BombTimer:setupBombTimer(1.000000, true)
	registerVal8.AOrBText:setText(Engine.Localize("B"))
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "VisibleFriendly"
	local function __FUNC_2214_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		return registerVal3
	end

	registerVal12.condition = __FUNC_2214_
	local registerVal13 = {}
	registerVal13.stateName = "VisibleEnemy"
	local function __FUNC_22E5_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "searchanddestroy.defending")
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_22E5_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B))
	local function __FUNC_240B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_240B_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "searchanddestroy.defending")
	local function __FUNC_2593_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "searchanddestroy.defending"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2593_)
	registerVal2:addElement(registerVal8)
	registerVal2.BombTimerB = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 4.000000, 260.000000)
	registerVal9:setTopBottom(true, false, 6.500000, 22.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("CODCASTER_TEAM1_NUM_ALIVE"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.AlliesNumPlayersAlive = registerVal9
	registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -253.000000, -3.000000)
	registerVal10:setTopBottom(true, false, 4.990000, 22.990000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("CODCASTER_TEAM2_NUM_ALIVE"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal10)
	registerVal2.AxisNumPlayersAlive = registerVal10
	registerVal11 = CoD.CodCasterDomFlagsWidget.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -53.000000, 50.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.DomFlags = registerVal11
	registerVal12 = CoD.CodCasterHardpointWidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -46.000000, 47.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 62.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.Hardpoint = registerVal12
	registerVal13 = CoD.CodCasterBallStatus.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -19.380000, 20.380000)
	registerVal13:setTopBottom(true, false, 4.000000, 60.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.UplinkBall = registerVal13
	local registerVal14 = CoD.CodCasterRobotStatus.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -19.380000, 20.380000)
	registerVal14:setTopBottom(true, false, 4.000000, 60.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.SafeGuardRobot = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_26C0_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_26C0_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_2BA2_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setLeftRight(true, false, 3.000000, 263.000000)
		registerVal2.AlliesFlagStatus:setTopBottom(true, false, -3.000000, 31.000000)
		registerVal2.AlliesFlagStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setLeftRight(true, false, 243.000000, 503.000000)
		registerVal2.AxisFlagStatus:setTopBottom(true, false, -3.000000, 31.000000)
		registerVal2.AxisFlagStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2BA2_
	registerVal15.CTF = registerVal16
	registerVal16 = {}
	local function __FUNC_3171_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.DomFlags:setTopBottom(true, false, 0.000000, 30.000000)
		registerVal2.DomFlags:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, 1.000000, 62.000000)
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_3171_
	registerVal15.Dom = registerVal16
	registerVal16 = {}
	local function __FUNC_3737_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, -1.000000, 59.000000)
		registerVal2.Hardpoint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_3737_
	registerVal15.Hardpoint = registerVal16
	registerVal16 = {}
	local function __FUNC_3CAB_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -46.000000, 47.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, 2.000000, 62.000000)
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.UplinkBall:setTopBottom(true, false, 14.000000, 70.000000)
		registerVal2.UplinkBall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_3CAB_
	registerVal15.Uplink = registerVal16
	registerVal16 = {}
	local function __FUNC_4283_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -46.000000, 47.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, 2.000000, 62.000000)
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.UplinkBall:setTopBottom(true, false, 4.000000, 60.000000)
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.SafeGuardRobot:setTopBottom(true, false, -1.000000, 55.000000)
		registerVal2.SafeGuardRobot:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_4283_
	registerVal15.SafeGuard = registerVal16
	registerVal16 = {}
	local function __FUNC_48B5_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setLeftRight(false, false, -26.000000, 20.000000)
		registerVal2.BombTimerA:setTopBottom(true, false, 10.000000, 40.000000)
		registerVal2.BombTimerA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setLeftRight(false, false, -26.000000, 20.000000)
		registerVal2.BombTimerB:setTopBottom(true, false, 10.000000, 40.000000)
		registerVal2.BombTimerB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setLeftRight(true, false, 11.000000, 262.000000)
		registerVal2.AlliesNumPlayersAlive:setTopBottom(true, false, 6.500000, 22.500000)
		registerVal2.AlliesNumPlayersAlive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setLeftRight(false, true, -256.000000, -13.000000)
		registerVal2.AxisNumPlayersAlive:setTopBottom(true, false, 4.990000, 22.990000)
		registerVal2.AxisNumPlayersAlive:setAlpha(1.000000)
		registerVal2.AxisNumPlayersAlive:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.DomFlags:setTopBottom(true, false, 0.000000, 30.000000)
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -46.000000, 47.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, 0.000000, 61.000000)
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_48B5_
	registerVal15.SD = registerVal16
	registerVal16 = {}
	local function __FUNC_508C_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.rightB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimerA:setLeftRight(false, false, -46.000000, 0.000000)
		registerVal2.BombTimerA:setTopBottom(true, false, 10.000000, 40.000000)
		registerVal2.BombTimerA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BombTimerB:setLeftRight(false, false, 0.000000, 47.000000)
		registerVal2.BombTimerB:setTopBottom(true, false, 10.000000, 40.000000)
		registerVal2.BombTimerB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.AlliesNumPlayersAlive:setLeftRight(true, false, 11.000000, 262.000000)
		registerVal2.AlliesNumPlayersAlive:setTopBottom(true, false, 6.500000, 22.500000)
		registerVal2.AlliesNumPlayersAlive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AxisNumPlayersAlive:setLeftRight(false, true, -256.000000, -13.000000)
		registerVal2.AxisNumPlayersAlive:setTopBottom(true, false, 4.990000, 22.990000)
		registerVal2.AxisNumPlayersAlive:setAlpha(0.000000)
		registerVal2.AxisNumPlayersAlive:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DomFlags:setLeftRight(false, false, -47.000000, 44.000000)
		registerVal2.DomFlags:setTopBottom(true, false, 0.000000, 30.000000)
		registerVal2.DomFlags:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Hardpoint:setLeftRight(false, false, -46.000000, 47.000000)
		registerVal2.Hardpoint:setTopBottom(true, false, 0.000000, 61.000000)
		registerVal2.Hardpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.UplinkBall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.SafeGuardRobot:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_508C_
	registerVal15.Dem = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "CTF"
	local function __FUNC_585A_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("ctf")
	end

	registerVal18.condition = __FUNC_585A_
	local registerVal19 = {}
	registerVal19.stateName = "Dom"
	local function __FUNC_58C2_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("dom")
	end

	registerVal19.condition = __FUNC_58C2_
	local registerVal20 = {}
	registerVal20.stateName = "Hardpoint"
	local function __FUNC_592A_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("koth")
	end

	registerVal20.condition = __FUNC_592A_
	local registerVal21 = {}
	registerVal21.stateName = "Uplink"
	local function __FUNC_5993_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("ball")
	end

	registerVal21.condition = __FUNC_5993_
	local registerVal22 = {}
	registerVal22.stateName = "SafeGuard"
	local function __FUNC_59FB_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("escort")
	end

	registerVal22.condition = __FUNC_59FB_
	local registerVal23 = {}
	registerVal23.stateName = "SD"
	local function __FUNC_5A65_(arg0, arg1, arg2)
		return IsGameTypeEqualToString("sd")
	end

	registerVal23.condition = __FUNC_5A65_
	local registerVal24 = {}
	registerVal24.stateName = "Dem"
	local function __FUNC_5ACD_(arg0, arg1, arg2)
		return IsBombBasedGameMode()
	end

	registerVal24.condition = __FUNC_5ACD_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21, registerVal22, registerVal23, registerVal24}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_5B21_(arg0)
		arg0.AlliesFlagStatus:close()
		arg0.AxisFlagStatus:close()
		arg0.BombTimerA:close()
		arg0.BombTimerB:close()
		arg0.DomFlags:close()
		arg0.Hardpoint:close()
		arg0.UplinkBall:close()
		arg0.SafeGuardRobot:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5B21_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterHeaderGameModeWidget.new = __FUNC_4AC_
