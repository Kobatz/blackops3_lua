-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local function __FUNC_212_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "ballGametype")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "ballGametype.ballStatusText")
		Engine.CreateModel(registerVal2, "ballGametype.ballHeldByEnemy")
		Engine.CreateModel(registerVal2, "ballGametype.ballHeldByFriendly")
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterBallStatus = registerVal2
local function __FUNC_3AC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_212_ then
		__FUNC_212_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterBallStatus)
	registerVal2.id = "CodCasterBallStatus"
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
	registerVal4:setTopBottom(true, false, 34.500000, 52.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ED7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Ball", "ballStatusText", __FUNC_ED7_)
	registerVal2:addElement(registerVal4)
	registerVal2.Status = registerVal4
	local registerVal5 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal5:setTopBottom(true, false, -1.500000, 33.500000)
	registerVal5.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_grab"))
	local function __FUNC_F8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_F8E_)
	registerVal2:addElement(registerVal5)
	registerVal2.AlliesFlag = registerVal5
	local registerVal6 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal6:setTopBottom(true, false, -1.500000, 33.500000)
	registerVal6.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_grab"))
	registerVal2:addElement(registerVal6)
	registerVal2.NeutralFlag = registerVal6
	local registerVal7 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal7:setTopBottom(true, false, -1.500000, 33.500000)
	registerVal7.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_grab"))
	local function __FUNC_101F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_101F_)
	registerVal2:addElement(registerVal7)
	registerVal2.AxisFlag = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_10AF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_10AF_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_110E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_110E_
	registerVal8.AxisHeld = registerVal9
	registerVal9 = {}
	local function __FUNC_12C2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_12C2_
	registerVal8.AlliesHeld = registerVal9
	registerVal9 = {}
	local function __FUNC_1476_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.AlliesFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NeutralFlag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AxisFlag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1476_
	registerVal8.Neutral = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "AxisHeld"
	local function __FUNC_162A_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "ballGametype.ballHeldByEnemy")
	end

	registerVal11.condition = __FUNC_162A_
	local registerVal12 = {}
	registerVal12.stateName = "AlliesHeld"
	local function __FUNC_16A8_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "ballGametype.ballHeldByFriendly")
	end

	registerVal12.condition = __FUNC_16A8_
	local registerVal13 = {}
	registerVal13.stateName = "Neutral"
	local function __FUNC_172B_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_172B_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "ballGametype.ballHeldByEnemy")
	local function __FUNC_1774_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ballGametype.ballHeldByEnemy"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1774_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "ballGametype.ballHeldByFriendly")
	local function __FUNC_18A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ballGametype.ballHeldByFriendly"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_18A6_)
	local function __FUNC_19D9_(arg0)
		arg0.AlliesFlag:close()
		arg0.NeutralFlag:close()
		arg0.AxisFlag:close()
		arg0.Status:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterBallStatus.new = __FUNC_3AC_
