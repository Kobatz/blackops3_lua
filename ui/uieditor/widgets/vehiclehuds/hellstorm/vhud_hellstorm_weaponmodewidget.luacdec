-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_NotificationArmed")
require("ui.uieditor.widgets.VehicleHUDs.hellstorm.vhud_hellstorm_NotificationCluster")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_hellstorm_WeaponModeWidget = registerVal1
function CoD.vhud_hellstorm_WeaponModeWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_hellstorm_WeaponModeWidget)
	registerVal2.id = "vhud_hellstorm_WeaponModeWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = CoD.vhud_hellstorm_NotificationArmed.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -1.000000, 80.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudhellstormNotificationArmed = registerVal3
	local registerVal4 = CoD.vhud_hellstorm_NotificationCluster.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -1.000000, 80.000000)
	registerVal4:setTopBottom(true, false, 19.000000, 49.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudhellstormNotificationCluster = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 26.540000, 52.500000)
	registerVal5:setTopBottom(true, false, -19.850000, 50.850000)
	registerVal5:setRGB(1.000000, 0.000000, 0.030000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setZRot(-90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowOrangeOver = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9DF_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_CA6_(arg0, arg1)
			local function __FUNC_E1F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1F_)
		end

		registerVal3:completeAnimation()
		registerVal2.vhudhellstormNotificationArmed:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.vhudhellstormNotificationArmed:setAlpha(1.000000)
		__FUNC_CA6_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.vhudhellstormNotificationCluster:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.vhudhellstormNotificationCluster:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_FFA_(arg0, arg1)
			local function __FUNC_1173_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 26.540000, 52.500000)
				arg0:setTopBottom(true, false, -19.850000, 50.850000)
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1173_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1173_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 26.540000, 52.500000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -19.850000, 50.850000)
		registerVal2.GlowOrangeOver:setAlpha(0.400000)
		__FUNC_FFA_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9DF_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1395_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.vhudhellstormNotificationArmed:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.vhudhellstormNotificationArmed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_168D_(arg0, arg1)
			local function __FUNC_1807_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1807_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1807_)
		end

		registerVal4:completeAnimation()
		registerVal2.vhudhellstormNotificationCluster:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.vhudhellstormNotificationCluster:setAlpha(1.000000)
		__FUNC_168D_(registerVal4, {})
		local function __FUNC_19E2_(arg0, arg1)
			local function __FUNC_1B5B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 26.520000, 52.480000)
				arg0:setTopBottom(true, false, -1.350000, 69.350000)
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5B_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 26.520000, 52.480000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -1.350000, 69.350000)
		registerVal2.GlowOrangeOver:setAlpha(0.400000)
		__FUNC_19E2_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_1395_
	registerVal6.Cluster = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Cluster"
	local function __FUNC_1D7D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "ammo", 0.000000)
	end

	registerVal9.condition = __FUNC_1D7D_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1DF8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ammo", true, __FUNC_1DF8_)
	local function __FUNC_1F12_(arg0)
		arg0.vhudhellstormNotificationArmed:close()
		arg0.vhudhellstormNotificationCluster:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F12_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

