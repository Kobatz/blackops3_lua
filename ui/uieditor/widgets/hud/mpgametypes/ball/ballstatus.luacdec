-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local function __FUNC_255_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "ballGametype")
	Engine.CreateModel(registerVal3, "ballStatusText")
	Engine.CreateModel(registerVal3, "ballHeldByEnemy")
	Engine.CreateModel(registerVal3, "ballHeldByFriendly")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BallStatus = registerVal2
local function __FUNC_3AF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_255_ then
		__FUNC_255_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BallStatus)
	registerVal2.id = "BallStatus"
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
	registerVal4:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 36.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ShadowGlow = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 36.000000, 252.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 7.000000)
	registerVal5:setText(Engine.Localize("WWWWWMWWWWWMWWWWWW"))
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
	registerVal2:addElement(registerVal5)
	registerVal2.CarrierName = registerVal5
	local registerVal6 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 6.870000, 30.500000)
	registerVal6:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal6:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal6:setAlpha(0.000000)
	registerVal6.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_uplinkballsquare"))
	registerVal2:addElement(registerVal6)
	registerVal2.FriendlyFlag = registerVal6
	local registerVal7 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 6.870000, 30.500000)
	registerVal7:setTopBottom(true, false, 7.000000, 25.000000)
	registerVal7:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
	registerVal7:setAlpha(0.000000)
	registerVal7.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_uplinkballsquare"))
	registerVal2:addElement(registerVal7)
	registerVal2.EnemyFlag = registerVal7
	local registerVal8 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 6.870000, 30.500000)
	registerVal8:setTopBottom(true, false, 6.000000, 24.000000)
	registerVal8.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_uplinkballsquare"))
	registerVal2:addElement(registerVal8)
	registerVal2.NeutralFlag = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_11A6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EnemyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11A6_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_135D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EnemyFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_135D_
	registerVal9.EnemyHeld = registerVal10
	registerVal10 = {}
	local function __FUNC_1515_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EnemyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1515_
	registerVal9.FriendlyHeld = registerVal10
	registerVal10 = {}
	local function __FUNC_16CD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.EnemyFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_16CD_
	registerVal9.Neutral = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "EnemyHeld"
	local function __FUNC_1885_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "ballGametype.ballHeldByEnemy")
	end

	registerVal12.condition = __FUNC_1885_
	local registerVal13 = {}
	registerVal13.stateName = "FriendlyHeld"
	local function __FUNC_1904_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "ballGametype.ballHeldByFriendly")
	end

	registerVal13.condition = __FUNC_1904_
	local registerVal14 = {}
	registerVal14.stateName = "Neutral"
	local function __FUNC_1987_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_1987_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "ballGametype.ballHeldByEnemy")
	local function __FUNC_19D0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ballGametype.ballHeldByEnemy"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_19D0_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "ballGametype.ballHeldByFriendly")
	local function __FUNC_1B02_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ballGametype.ballHeldByFriendly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_1B02_)
	local function __FUNC_1C35_(arg0)
		arg0.Panel:close()
		arg0.FriendlyFlag:close()
		arg0.EnemyFlag:close()
		arg0.NeutralFlag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C35_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BallStatus.new = __FUNC_3AF_
