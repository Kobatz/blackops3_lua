-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MedalXpWidget = registerVal1
function CoD.MedalXpWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MedalXpWidget)
	registerVal2.id = "MedalXpWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 145.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 46.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 46.290000)
	registerVal3:setTopBottom(true, false, 0.000000, 46.290000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp"))
	registerVal2:addElement(registerVal3)
	registerVal2.XpIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 57.430000, 145.440000)
	registerVal4:setTopBottom(true, false, 10.650000, 35.650000)
	registerVal4:setText(Engine.Localize("+1000 XP"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.XpValue = registerVal4
	local registerVal5 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -1.000000, 47.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 47.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Notification2xpReward = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_987_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.XpIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_987_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_AD7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.XpIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_AD7_
	registerVal6.Visible = registerVal7
	registerVal7 = {}
	local function __FUNC_C27_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.XpIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C27_
	registerVal6.DoubleXP = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_DDF_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "aarType", "public")
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_DDF_
	local registerVal10 = {}
	registerVal10.stateName = "DoubleXP"
	local function __FUNC_E8A_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "aarType", "public")
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_E8A_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "aarType")
	local function __FUNC_F32_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "aarType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_F32_)
	local function __FUNC_104D_(arg0)
		arg0.Notification2xpReward:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_104D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

