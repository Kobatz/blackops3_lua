-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.SideMissions.baseHealthDamageIconWidget")
require("ui.uieditor.widgets.MPHudWidgets.SideMissions.baseHealthDamageBarWidget")
local function __FUNC_2BA_(arg0, arg1)
	if not arg0.alreadyUpdated then
		arg0:setState("Visible")
		arg0.alreadyUpdated = true
	end
	if arg1.newValue < arg0.healthPercent or arg0.damageClipTimer then
		if arg1.newValue < arg0.healthPercent and arg0.damageClipTimer then
			arg0.damageClipTimer:close()
			arg0.damageClipTimer = nil
		end
		if arg0.healingClipTimer then
			arg0.healingClipTimer:processNow()
			arg0.healingClipTimer = nil
		end
		arg0.damageBarWidget:takingDamageFunction(arg1.newValue)
		arg0.iconWidget:takingDamageFunction()
		local registerVal3 = LUI.UITimer.new(1500.000000, "damage_icon_reset", true, arg0)
		arg0.damageClipTimer = registerVal3
		arg0:addElement(arg0.damageClipTimer)
		if not arg0.damageClipTimer and arg0.healthPercent < arg1.newValue then
			if arg0.healingClipTimer then
				arg0.healingClipTimer:close()
				arg0.healingClipTimer = nil
			end
			arg0.damageBarWidget:healingFunction(arg1.newValue)
			arg0.iconWidget:healingFunction()
			registerVal3 = LUI.UITimer.new(1500.000000, "healing_icon_reset", true, arg0)
			arg0.healingClipTimer = registerVal3
			arg0:addElement(arg0.healingClipTimer)
		end
	end
	arg0.healthPercent = arg1.newValue
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_6B0_(arg0, arg1)
	arg0.damageClipTimer:close()
	arg0.damageClipTimer = nil
	arg0.damageBarWidget:endTakingDamageFunction()
	arg0.iconWidget:endTakingDamageFunction()
end

local function __FUNC_793_(arg0, arg1)
	arg0.healingClipTimer:close()
	arg0.healingClipTimer = nil
	arg0.damageBarWidget:endHealingFunction()
	arg0.iconWidget:endHealingFunction()
end

local function __FUNC_86F_(arg0)
	arg0.healthPercent = 1.000000
	arg0:registerEventHandler("sm_beacon_health", __FUNC_2BA_)
	arg0:registerEventHandler("damage_icon_reset", __FUNC_6B0_)
	arg0:registerEventHandler("healing_icon_reset", __FUNC_793_)
end

local registerVal7 = InheritFrom(LUI.UIElement)
CoD.baseHealthWidget = registerVal7
local function __FUNC_957_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.baseHealthWidget)
	registerVal2.id = "baseHealthWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.baseHealthDamageIconWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -32.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.iconWidget = registerVal3
	local registerVal4 = CoD.baseHealthDamageBarWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.damageBarWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_DB0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.iconWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.damageBarWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DB0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_F0F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.iconWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.damageBarWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F0F_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_106B_(arg0)
		arg0.iconWidget:close()
		arg0.damageBarWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_106B_)
	if __FUNC_86F_ then
		__FUNC_86F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.baseHealthWidget.new = __FUNC_957_
