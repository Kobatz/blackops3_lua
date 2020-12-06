-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.BlackCell.CenterReticle")
require("ui.uieditor.widgets.HUD.BlackCell.HorizontalCompassBlackCell")
require("ui.uieditor.widgets.Reticles.BlackCell.TeamMateLockOn")
require("ui.uieditor.widgets.Reticles.BlackCell.Timer")
require("ui.uieditor.widgets.Reticles.BlackCell.Target")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackCellInternal = registerVal1
function CoD.BlackCellInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackCellInternal)
	registerVal2.id = "BlackCellInternal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_blackcell_720overlaybg"))
	registerVal2:addElement(registerVal3)
	registerVal2.OverlayBG = registerVal3
	local registerVal4 = CoD.CenterReticle.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -546.500000, 546.500000)
	registerVal4:setTopBottom(false, false, -247.500000, 247.500000)
	registerVal4:setScale(0.660000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_B1D_(arg0, arg2, arg3)
		return IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_LOCKED)
	end

	registerVal8.condition = __FUNC_B1D_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.lockedOnEnemy")
	local function __FUNC_C1B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemy"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_C1B_)
	registerVal2:addElement(registerVal4)
	registerVal2.CenterReticle = registerVal4
	local registerVal5 = CoD.HorizontalCompassBlackCell.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -223.580000, 227.270000)
	registerVal5:setTopBottom(true, false, 85.500000, 160.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.HorizontalCompassBlackCell = registerVal5
	local registerVal6 = CoD.TeamMateLockOn.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 212.030000, 347.600000)
	registerVal6:setTopBottom(false, false, -52.000000, 50.880000)
	registerVal2:addElement(registerVal6)
	registerVal2.TeamMateLockOn = registerVal6
	registerVal7 = CoD.Timer.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -322.000000, -225.400000)
	registerVal7:setTopBottom(false, false, -41.250000, -1.000000)
	registerVal7:setScale(0.900000)
	registerVal2:addElement(registerVal7)
	registerVal2.Timer = registerVal7
	registerVal8 = CoD.Target.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -325.000000, -237.000000)
	registerVal8:setTopBottom(false, false, 11.880000, 51.880000)
	registerVal8:setScale(0.900000)
	registerVal2:addElement(registerVal8)
	registerVal2.Target = registerVal8
	local function __FUNC_D49_(arg0)
		arg0.CenterReticle:close()
		arg0.HorizontalCompassBlackCell:close()
		arg0.TeamMateLockOn:close()
		arg0.Timer:close()
		arg0.Target:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D49_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

