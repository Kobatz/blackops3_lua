-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_Ball = registerVal1
function CoD.AmmoWidget_Ball.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_Ball)
	registerVal2.id = "AmmoWidget_Ball"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -21.230000, 86.370000)
	registerVal3:setTopBottom(true, false, -19.500000, 89.500000)
	registerVal3:setRGB(0.300000, 0.650000, 0.820000)
	registerVal3:setAlpha(0.410000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal4:setScale(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_widget_uplink_ball"))
	registerVal2:addElement(registerVal4)
	registerVal2.Ball = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_101D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Ball:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_101D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_116F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Ball:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_116F_
	registerVal5.Hide = registerVal6
	registerVal6 = {}
	local function __FUNC_12BF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1547_(arg0, arg1)
			local function __FUNC_16BF_(arg0, arg1)
				local function __FUNC_1837_(arg0, arg1)
					local function __FUNC_19AF_(arg0, arg1)
						local function __FUNC_1B27_(arg0, arg1)
							local function __FUNC_1C9F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, -21.230000, 86.370000)
								arg0:setTopBottom(true, false, -19.500000, 89.500000)
								arg0:setRGB(0.300000, 0.650000, 0.820000)
								arg0:setAlpha(0.400000)
								arg0:setScale(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1C9F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.750000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C9F_)
						end

						if arg1.interrupted then
							__FUNC_1B27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.400000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B27_)
					end

					if arg1.interrupted then
						__FUNC_19AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19AF_)
				end

				if arg1.interrupted then
					__FUNC_1837_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1837_)
			end

			if arg1.interrupted then
				__FUNC_16BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BF_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setLeftRight(true, false, -21.230000, 86.370000)
		registerVal2.PanelGlow:setTopBottom(true, false, -19.500000, 89.500000)
		registerVal2.PanelGlow:setRGB(0.300000, 0.650000, 0.820000)
		registerVal2.PanelGlow:setAlpha(0.410000)
		registerVal2.PanelGlow:setScale(1.000000)
		__FUNC_1547_(registerVal3, {})
		local function __FUNC_1F17_(arg0, arg1)
			local function __FUNC_208F_(arg0, arg1)
				local function __FUNC_2207_(arg0, arg1)
					local function __FUNC_237F_(arg0, arg1)
						local function __FUNC_24F7_(arg0, arg1)
							local function __FUNC_266F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								arg0:setScale(0.900000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_266F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_266F_)
						end

						if arg1.interrupted then
							__FUNC_24F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(0.900000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F7_)
					end

					if arg1.interrupted then
						__FUNC_237F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237F_)
				end

				if arg1.interrupted then
					__FUNC_2207_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2207_)
			end

			if arg1.interrupted then
				__FUNC_208F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Ball:setAlpha(1.000000)
		registerVal2.Ball:setScale(0.900000)
		__FUNC_1F17_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_12BF_
	registerVal5.Show = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hide"
	local function __FUNC_2844_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		if registerVal3 and registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_2844_
	local registerVal9 = {}
	registerVal9.stateName = "Show"
	local function __FUNC_2DFF_(arg0, arg2, arg3)
		return IsCurrentViewmodelWeaponName(arg1, "ball")
	end

	registerVal9.condition = __FUNC_2DFF_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_2E70_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_2E70_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_2FFA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_2FFA_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_3189_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3189_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_3313_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3313_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_3499_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3499_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_3630_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3630_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_37C7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_37C7_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_394D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_394D_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_3ADA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3ADA_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_3C60_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3C60_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_3DE8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3DE8_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_3F71_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_3F71_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_4100_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_4100_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_428E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_428E_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_4426_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_4426_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "currentWeapon.viewmodelWeaponName")
	local function __FUNC_45AD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.viewmodelWeaponName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_45AD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

