-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RobotStatus = registerVal1
function CoD.RobotStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RobotStatus)
	registerVal2.id = "RobotStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 4.000000, -68.000000)
	registerVal3:setTopBottom(false, false, -13.000000, 11.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.000000, 36.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 36.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ShadowGlow = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 28.000000, 248.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_10DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Escort", "robotStatusText", __FUNC_10DB_)
	registerVal2:addElement(registerVal5)
	registerVal2.RobotStatus = registerVal5
	local registerVal6 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.000000, 28.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal6:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_safeguard_robot_minimap"))
	registerVal2:addElement(registerVal6)
	registerVal2.EnemyTeamIcon = registerVal6
	local registerVal7 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 4.000000, 28.000000)
	registerVal7:setTopBottom(true, false, 4.000000, 28.000000)
	registerVal7:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_safeguard_robot_minimap"))
	registerVal2:addElement(registerVal7)
	registerVal2.FriendlyTeamIcon = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1192_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RobotStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EnemyTeamIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FriendlyTeamIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1192_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_13F7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RobotStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EnemyTeamIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FriendlyTeamIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13F7_
	registerVal8.EnemyRobot = registerVal9
	registerVal9 = {}
	local function __FUNC_1665_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ShadowGlow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RobotStatus:setLeftRight(true, false, 32.000000, 247.000000)
		registerVal2.RobotStatus:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.RobotStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.EnemyTeamIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FriendlyTeamIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1665_
	registerVal8.FriendlyRobot = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "EnemyRobot"
	local function __FUNC_1965_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.enemyRobot", 1.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.robotStatusVisible", 1.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1965_
	local registerVal12 = {}
	registerVal12.stateName = "FriendlyRobot"
	local function __FUNC_1A34_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.enemyRobot", 0.000000)
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "escortGametype.robotStatusVisible", 1.000000)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1A34_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "escortGametype.enemyRobot")
	local function __FUNC_1B09_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "escortGametype.enemyRobot"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1B09_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "escortGametype.robotStatusVisible")
	local function __FUNC_1C37_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "escortGametype.robotStatusVisible"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1C37_)
	local function __FUNC_1D6B_(arg0)
		arg0.Panel:close()
		arg0.EnemyTeamIcon:close()
		arg0.FriendlyTeamIcon:close()
		arg0.RobotStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D6B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

