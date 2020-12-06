-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IconRewardWidget = registerVal1
function CoD.IconRewardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.IconRewardWidget)
	registerVal2.id = "IconRewardWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -48.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines"))
	registerVal3:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImageScanline = registerVal3
	local registerVal4 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Notification2xpReward = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_88A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageScanline:setLeftRight(false, true, -48.000000, 0.000000)
		registerVal2.ImageScanline:setTopBottom(false, false, -24.000000, 24.000000)
		registerVal2.ImageScanline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_88A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A80_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageScanline:setLeftRight(false, true, -111.000000, 19.000000)
		registerVal2.ImageScanline:setTopBottom(false, false, -16.000000, 16.000000)
		registerVal2.ImageScanline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A80_
	registerVal5.CallingCard = registerVal6
	registerVal6 = {}
	local function __FUNC_C7D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageScanline:setLeftRight(false, true, -48.000000, 0.000000)
		registerVal2.ImageScanline:setTopBottom(false, false, -24.000000, 24.000000)
		registerVal2.ImageScanline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C7D_
	registerVal5.DoubleXP = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "CallingCard"
	local function __FUNC_E74_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_E74_
	local registerVal9 = {}
	registerVal9.stateName = "DoubleXP"
	local function __FUNC_EA8_(arg0, arg2, arg3)
		local registerVal3 = IsDoubleXP(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "icon", "t7_hud_mp_notifications_xp_blue")
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_EA8_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_F70_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "icon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "icon", true, __FUNC_F70_)
	local function __FUNC_108A_(arg0)
		arg0.Notification2xpReward:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_108A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

