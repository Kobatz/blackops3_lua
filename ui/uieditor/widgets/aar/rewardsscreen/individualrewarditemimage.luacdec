-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IndividualRewardItemImage = registerVal1
function CoD.IndividualRewardItemImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.IndividualRewardItemImage)
	registerVal2.id = "IndividualRewardItemImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_90D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_90D_)
	registerVal2:addElement(registerVal3)
	registerVal2.RewardImage = registerVal3
	local registerVal4 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 49.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 49.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Notification2xpReward = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 2.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_blackmarket_doubleloot_small"))
	registerVal2:addElement(registerVal5)
	registerVal2.DoubleCryptokeys = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9C0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.RewardImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9C0_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C05_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, -118.000000, 85.000000)
		registerVal2.RewardImage:setTopBottom(true, false, 0.000000, 50.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C05_
	registerVal6.CallingCard = registerVal7
	registerVal7 = {}
	local function __FUNC_E37_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RewardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E37_
	registerVal6.DoubleXP = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "CallingCard"
	local function __FUNC_FFD_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isCallingCard")
	end

	registerVal9.condition = __FUNC_FFD_
	local registerVal10 = {}
	registerVal10.stateName = "DoubleXP"
	local function __FUNC_1075_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rewardImage", "t7_hud_mp_notifications_xp_blue")
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1075_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1143_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isCallingCard"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isCallingCard", true, __FUNC_1143_)
	local function __FUNC_1263_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_1263_)
	local function __FUNC_1381_(arg0)
		arg0.Notification2xpReward:close()
		arg0.RewardImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1381_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

