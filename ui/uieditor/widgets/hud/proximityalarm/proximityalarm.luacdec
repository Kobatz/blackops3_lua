-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BF_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "hudItems.proximityAlarm")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "hudItems.proximityAlarm")
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ProximityAlarm = registerVal2
local function __FUNC_2B7_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 5.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if __FUNC_1BF_ then
		__FUNC_1BF_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ProximityAlarm)
	registerVal2.id = "ProximityAlarm"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -58.190000, -33.810000)
	registerVal3:setTopBottom(false, false, -13.000000, 13.000000)
	registerVal3:setImage(RegisterImage("uie_hud_satchelcharge_32"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.icon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -19.810000, 49.190000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setText(Engine.Localize("WEAPON_C4_ARMED"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BCD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setLeftRight(false, false, -70.500000, -38.500000)
		registerVal2.icon:setTopBottom(false, false, -16.000000, 16.000000)
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.text:setLeftRight(false, false, -22.500000, 65.500000)
		registerVal2.text:setTopBottom(false, false, -12.500000, 12.500000)
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BCD_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_E0E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E0E_
	local function __FUNC_F5A_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1104_(arg0, arg1)
			local function __FUNC_125C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_125C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125C_)
		end

		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		__FUNC_1104_(registerVal3, {})
		local function __FUNC_1411_(arg0, arg1)
			local function __FUNC_1568_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setText(Engine.Localize("WEAPON_C4_ARMED"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1568_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1568_)
		end

		registerVal4:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("WEAPON_C4_ARMED"))
		__FUNC_1411_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_F5A_
	registerVal5.AlarmDeployed = registerVal6
	registerVal6 = {}
	local function __FUNC_1789_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1963_(arg0, arg1)
			local function __FUNC_1AB8_(arg0, arg1)
				local function __FUNC_1C33_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1C33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C33_)
			end

			if arg1.interrupted then
				__FUNC_1AB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AB8_)
		end

		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		__FUNC_1963_(registerVal3, {})
		local function __FUNC_1DE5_(arg0, arg1)
			local function __FUNC_1F3C_(arg0, arg1)
				local function __FUNC_20B7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setText(Engine.Localize("WEAPON_C4_ALARM"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_20B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20B7_)
			end

			if arg1.interrupted then
				__FUNC_1F3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3C_)
		end

		registerVal4:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("WEAPON_C4_ALARM"))
		__FUNC_1DE5_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_1789_
	registerVal5.AlarmOn = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "AlarmDeployed"
	local function __FUNC_22D5_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "hudItems.proximityAlarm", 1.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			if not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_22D5_
	local registerVal9 = {}
	registerVal9.stateName = "AlarmOn"
	local function __FUNC_2483_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "hudItems.proximityAlarm", 2.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			if not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_2483_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "hudItems.proximityAlarm")
	local function __FUNC_262F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.proximityAlarm"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_262F_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_2759_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_2759_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_28F0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_28F0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ProximityAlarm.new = __FUNC_2B7_
