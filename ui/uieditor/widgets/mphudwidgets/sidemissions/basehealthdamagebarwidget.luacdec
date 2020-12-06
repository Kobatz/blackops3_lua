-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.SideMissions.baseHealthDamageBorderWidget")
local function __FUNC_292_(arg0, arg1)
	if arg1 < 0.250000 then
		arg0:setState("LowHealthState")
	else
		arg0:setState("DefaultState")
	end
	arg0.baseHealthBar:beginAnimation("update_width")
	arg0.baseHealthBar:setLeftRight(true, false, 0.000000, (arg1 * 232.000000))
	arg0.updatedWidth = (arg1 * 232.000000)
end

local function __FUNC_3E2_(arg0, arg1)
	arg0.baseHealthBarAnimBacking:beginAnimation("update_width", 500.000000)
	arg0.baseHealthBarAnimBacking:setLeftRight(true, false, 0.000000, arg0.updatedWidth)
end

local function __FUNC_4D5_(arg0, arg1)
	if arg1 < 0.250000 then
		arg0:setState("LowHealthState")
	else
		arg0:setState("DefaultState")
	end
	arg0.baseHealthBarHealing:beginAnimation("update_width")
	if arg0.healingStartPoint == -1.000000 then
		arg0.baseHealthBarHealing:setLeftRight(true, false, arg0.updatedWidth, (arg1 * 232.000000))
		arg0.healingStartPoint = arg0.updatedWidth
	else
		arg0.baseHealthBarHealing:setLeftRight(true, false, arg0.healingStartPoint, (arg1 * 232.000000))
	end
	arg0.baseHealthBarHealing:setAlpha(1.000000)
	arg0.baseHealthBar:beginAnimation("update_width")
	arg0.baseHealthBar:setLeftRight(true, false, 0.000000, (arg1 * 232.000000))
	arg0.updatedWidth = (arg1 * 232.000000)
end

local function __FUNC_72B_(arg0, arg1)
	arg0.baseHealthBarHealing:beginAnimation("update_width", 500.000000)
	arg0.baseHealthBarHealing:setLeftRight(true, false, arg0.updatedWidth, arg0.updatedWidth)
	arg0.healingStartPoint = -1.000000
end

local function __FUNC_840_(arg0)
	arg0.updatedWidth = 232.000000
	arg0.healingStartPoint = -1.000000
	arg0.takingDamageFunction = __FUNC_292_
	arg0.endTakingDamageFunction = __FUNC_3E2_
	arg0.healingFunction = __FUNC_4D5_
	arg0.endHealingFunction = __FUNC_72B_
end

local registerVal9 = InheritFrom(LUI.UIElement)
CoD.baseHealthDamageBarWidget = registerVal9
local function __FUNC_942_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.baseHealthDamageBarWidget)
	registerVal2.id = "baseHealthDamageBarWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.340000, 0.340000, 0.340000)
	registerVal3:setAlpha(0.160000)
	registerVal2:addElement(registerVal3)
	registerVal2.staticBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.baseHealthBarAnimBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.310000, 0.740000, 0.210000)
	registerVal2:addElement(registerVal5)
	registerVal2.baseHealthBar = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.540000, 0.840000, 0.120000)
	registerVal2:addElement(registerVal6)
	registerVal2.baseHealthBarHealing = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal7:setText(Engine.Localize("CPUI_BEACON_HEALTH"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.baseHealthTextBox = registerVal7
	local registerVal8 = CoD.baseHealthDamageBorderWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.baseHealthDamageBorderWidget = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_11A4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_11A4_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1206_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.baseHealthBar:setRGB(0.970000, 0.150000, 0.110000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal10.DefaultClip = __FUNC_1206_
	local function __FUNC_1319_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.damageTaken = __FUNC_1319_
	registerVal9.LowHealthState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_137A_(arg0)
		arg0.baseHealthDamageBorderWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_137A_)
	if __FUNC_840_ then
		__FUNC_840_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.baseHealthDamageBarWidget.new = __FUNC_942_
