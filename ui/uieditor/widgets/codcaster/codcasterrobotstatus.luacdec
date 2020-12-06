-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local function __FUNC_213_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "escortGametype")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "escortGametype")
		Engine.CreateModel(registerVal2, "escortGametype.enemyRobot")
		Engine.CreateModel(registerVal2, "escortGametype.robotStatusVisible")
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterRobotStatus = registerVal2
local function __FUNC_388_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_213_ then
		__FUNC_213_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterRobotStatus)
	registerVal2.id = "CodCasterRobotStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -25.500000, 25.500000)
	registerVal3:setTopBottom(true, false, -9.500000, 41.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.ShadowGlow = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -111.000000, 111.000000)
	registerVal4:setTopBottom(true, false, 35.000000, 51.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E05_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Escort", "robotStatusText", __FUNC_E05_)
	registerVal2:addElement(registerVal4)
	registerVal2.Status = registerVal4
	local registerVal5 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal5:setTopBottom(true, false, -1.500000, 33.500000)
	registerVal5.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_safeguard_robot_minimap"))
	local function __FUNC_EBE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_EBE_)
	registerVal2:addElement(registerVal5)
	registerVal2.AlliesFlag = registerVal5
	local registerVal6 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal6:setTopBottom(true, false, -1.500000, 33.500000)
	registerVal6.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_safeguard_robot_minimap"))
	local function __FUNC_F4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_F4F_)
	registerVal2:addElement(registerVal6)
	registerVal2.AxisFlag = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_FDF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Status:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FDF_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_11E0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Status:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11E0_
	registerVal7.AxisRobot = registerVal8
	registerVal8 = {}
	local function __FUNC_13EE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Status:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_13EE_
	registerVal7.AlliesRobot = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "AxisRobot"
	local function __FUNC_15FA_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.enemyRobot", 1.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.robotStatusVisible", 1.000000)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_15FA_
	local registerVal11 = {}
	registerVal11.stateName = "AlliesRobot"
	local function __FUNC_16C8_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.enemyRobot", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.robotStatusVisible", 1.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_16C8_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "escortGametype.enemyRobot")
	local function __FUNC_179D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "escortGametype.enemyRobot"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_179D_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "escortGametype.robotStatusVisible")
	local function __FUNC_18CB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "escortGametype.robotStatusVisible"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_18CB_)
	local function __FUNC_19FF_(arg0)
		arg0.AlliesFlag:close()
		arg0.AxisFlag:close()
		arg0.Status:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19FF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterRobotStatus.new = __FUNC_388_
