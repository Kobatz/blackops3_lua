-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpWeaponReward")
require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreen_DoubleXPWidget = registerVal1
function CoD.LoadingScreen_DoubleXPWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreen_DoubleXPWidget)
	registerVal2.id = "LoadingScreen_DoubleXPWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -48.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_blackmarket_doubleloot_small"))
	registerVal2:addElement(registerVal3)
	registerVal2.cryptokeyBack0 = registerVal3
	local registerVal4 = CoD.Notification2xpWeaponReward.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -96.000000, -48.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Notification2xpWeaponReward = registerVal4
	local registerVal5 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -144.000000, -96.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Notification2xpReward = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B46_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_B46_
	local function __FUNC_BA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.StartLoading = __FUNC_BA6_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C06_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpWeaponReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C06_
	registerVal6.TripleDouble = registerVal7
	registerVal7 = {}
	local function __FUNC_DD6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpWeaponReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DD6_
	registerVal6.DoubleXPDoubleWeaponXP = registerVal7
	registerVal7 = {}
	local function __FUNC_FAB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpWeaponReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_FAB_
	registerVal6.DoubleXP = registerVal7
	registerVal7 = {}
	local function __FUNC_117F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpWeaponReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_117F_
	registerVal6.DoubleWeaponXP = registerVal7
	registerVal7 = {}
	local function __FUNC_1353_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpWeaponReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1353_
	registerVal6.Doubleloot = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "TripleDouble"
	local function __FUNC_1527_(arg0, arg2, arg3)
		local registerVal3 = IsDoubleWeaponXP(arg1)
		registerVal3 = IsDoubleXP(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsDoubleLootXP(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1527_
	local registerVal10 = {}
	registerVal10.stateName = "DoubleXPDoubleWeaponXP"
	local function __FUNC_15CE_(arg0, arg2, arg3)
		local registerVal3 = IsDoubleWeaponXP(arg1)
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_15CE_
	local registerVal11 = {}
	registerVal11.stateName = "DoubleXP"
	local function __FUNC_164A_(arg0, arg2, arg3)
		return IsDoubleXP(arg1)
	end

	registerVal11.condition = __FUNC_164A_
	local registerVal12 = {}
	registerVal12.stateName = "DoubleWeaponXP"
	local function __FUNC_1698_(arg0, arg2, arg3)
		return IsDoubleWeaponXP(arg1)
	end

	registerVal12.condition = __FUNC_1698_
	local registerVal13 = {}
	registerVal13.stateName = "Doubleloot"
	local function __FUNC_16EE_(arg0, arg2, arg3)
		return IsDoubleLootXP(arg1)
	end

	registerVal13.condition = __FUNC_16EE_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1740_(arg0)
		arg0.Notification2xpWeaponReward:close()
		arg0.Notification2xpReward:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1740_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

