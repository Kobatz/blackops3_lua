-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterDots")
require("ui.uieditor.widgets.MPHudWidgets.ThrustMeter.ThrustMeterArrows")
local registerVal0 = {}
local registerVal1 = {}
registerVal1.r = 1.000000
registerVal1.g = 1.000000
registerVal1.b = 1.000000
registerVal0 = {registerVal1}
registerVal1 = {}
registerVal1 = {0.000000}
local function __FUNC_2E2_(arg0, arg1, arg2, arg3)
	local registerVal5 = math.max(0.000000, arg3)
	local registerVal4 = math.min(registerVal5, 1.000000)
	arg0:setRGB(((arg1.r * (1.000000 - registerVal4)) + (arg2.r * registerVal4)), ((arg1.g * (1.000000 - registerVal4)) + (arg2.g * registerVal4)), ((arg1.b * (1.000000 - registerVal4)) + (arg2.b * registerVal4)))
end

local function __FUNC_433_(arg0, arg1)
	for index2=1.000000, (#registerVal1 - 1.000000), 1.000000 do
		if registerVal1[index2] <= arg1 and arg1 <= registerVal1[(index2 + 1.000000)] then
			__FUNC_2E2_(arg0, registerVal0[index2], registerVal0[(index2 + 1.000000)], ((arg1 - registerVal1[index2]) / (registerVal1[(index2 + 1.000000)] - registerVal1[index2])))
			return 
		end
	end
	arg0:setRGB(registerVal0[#registerVal0].r, registerVal0[#registerVal0].g, registerVal0[#registerVal0].b)
end

local function __FUNC_5CE_(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg1)
	if not registerVal2 then
		return 
	end
	if arg0.lastScalableWidth == -1.000000 then
		arg0:playClip("IntroAnimation")
		arg0.lastScalableWidth = 1.000000
	end
	if arg0.lastScalableWidth == registerVal2 then
		return 
	end
	if (arg0.lastScalableWidth + 0.001000) >= registerVal2 then
	end
	if registerVal2 == 1.000000 then
		arg0:setState("FullEnergy")
	else
		arg0:setState("DefaultState")
		arg0:playClip("DecreaseFromFull")
	end
	arg0.lastScalableWidth = registerVal2
	arg0.thrustMeter.fill:beginAnimation("update_fill", 50.000000, false, false)
	__FUNC_433_(arg0.thrustMeter.fill, registerVal2)
	arg0.thrustMeter.fill:setShaderVector(0.000000, (0.478500 + (0.043000 * registerVal2)), 0.000000, 0.000000, 0.000000)
	arg0.thrustMeter.dots:beginAnimation("update_fill", 50.000000, false, false)
	arg0.thrustMeter.dots:setShaderVector(0.000000, (1.000000 - (0.478500 + (0.043000 * registerVal2))), 0.000000, 0.000000, 0.000000)
	if true then
		arg0.thrustArrows.right1:playClip("Fill")
	else
		arg0.thrustArrows.right1:playClip("Drain")
	end
	arg0.thrustArrows.right1:beginAnimation("right_chevron_thick", 50.000000, false, false)
	arg0.thrustArrows.right1:setZRot((-25.300000 + (52.300000 * registerVal2)))
	arg0.thrustArrows.right2:beginAnimation("right_chevron_thin", 50.000000, false, false)
	arg0.thrustArrows.right2:setZRot(((-25.300000 + (52.300000 * registerVal2)) + 2.000000))
end

local function __FUNC_AB8_(arg0, arg1)
	arg0.lastScalableWidth = -1.000000
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "playerAbilities.playerEnergyRatio")
	local function __FUNC_BD2_(arg1)
		__FUNC_5CE_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_BD2_)
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.ThrustMeter = registerVal7
local function __FUNC_C0C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeter)
	registerVal2.id = "ThrustMeter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 170.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = CoD.ThrustMeterDots.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -70.000000, 68.000000)
	registerVal3:setTopBottom(false, true, -36.000000, 0.000000)
	registerVal3.dots:setShaderVector(0.000000, 0.522000, 0.000000, 0.000000, 0.000000)
	registerVal3.dots:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3.dots:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal3.fill:setShaderVector(0.000000, 0.521500, 0.000000, 0.000000, 0.000000)
	registerVal3.fill:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3.fill:setShaderVector(2.000000, -2.840000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.thrustMeter = registerVal3
	local registerVal4 = CoD.ThrustMeterArrows.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -7.500000, 7.500000)
	registerVal4:setTopBottom(false, true, -299.000000, 1.000000)
	registerVal4.right1:setZRot(27.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.thrustArrows = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -80.000000, -72.000000)
	registerVal5:setTopBottom(false, true, -36.000000, -28.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixel"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.pixel1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 72.000000, 80.000000)
	registerVal6:setTopBottom(false, true, -36.000000, -28.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_pixel"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.pixel2 = registerVal6
	local function __FUNC_1370_(arg0)
		arg0.thrustMeter:close()
		arg0.thrustArrows:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1370_)
	if __FUNC_AB8_ then
		__FUNC_AB8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ThrustMeter.new = __FUNC_C0C_
