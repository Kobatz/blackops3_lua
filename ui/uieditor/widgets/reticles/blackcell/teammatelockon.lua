-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TeamMateLockOn = registerVal1
function CoD.TeamMateLockOn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TeamMateLockOn)
	registerVal2.id = "TeamMateLockOn"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 136.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 103.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -101.000000, 99.460000)
	registerVal3:setTopBottom(false, false, -67.500000, 69.500000)
	registerVal3:setRGB(0.970000, 0.360000, 0.070000)
	registerVal3:setAlpha(0.490000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -76.000000, 78.580000)
	registerVal4:setTopBottom(false, false, -56.500000, -16.630000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_blackcell_teamlockline"))
	registerVal2:addElement(registerVal4)
	registerVal2.teamLockOn = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -76.000000, 78.580000)
	registerVal5:setTopBottom(false, false, 18.500000, 58.380000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_blackcell_teamlockline"))
	registerVal2:addElement(registerVal5)
	registerVal2.teamLockOn0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -59.280000, 63.580000)
	registerVal6:setTopBottom(false, false, -28.500000, 1.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setText(LocalizeToUpperString("WEAPON_TEAMMATE_LOCK_ON"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TeammateLockonShadow = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -59.280000, 63.580000)
	registerVal7:setTopBottom(false, false, -28.500000, 1.500000)
	registerVal7:setText(LocalizeToUpperString("WEAPON_TEAMMATE_LOCK_ON"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.TeammateLockon = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -56.280000, 59.580000)
	registerVal8:setTopBottom(false, false, -28.500000, 1.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("WEAPON_TEAMMATE_HACKING"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TeammateHackingShadow = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -56.280000, 59.580000)
	registerVal9:setTopBottom(false, false, -28.500000, 1.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("WEAPON_TEAMMATE_HACKING"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TeammateHacking = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_F99_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamLockOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.teamLockOn0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TeammateLockonShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeammateLockon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TeammateHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_F99_
	local function __FUNC_1265_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_151D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.490000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		__FUNC_151D_(registerVal3, {})
		local function __FUNC_16D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.teamLockOn:setAlpha(0.000000)
		__FUNC_16D1_(registerVal4, {})
		local function __FUNC_1885_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.teamLockOn0:setAlpha(0.000000)
		__FUNC_1885_(registerVal5, {})
		local function __FUNC_1A39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.TeammateLockonShadow:setAlpha(0.000000)
		__FUNC_1A39_(registerVal6, {})
		local function __FUNC_1BED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.TeammateLockon:setAlpha(0.000000)
		__FUNC_1BED_(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TeammateHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Locking = __FUNC_1265_
	local function __FUNC_1DA1_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_20BC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.490000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		__FUNC_20BC_(registerVal3, {})
		local function __FUNC_2271_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.teamLockOn:setAlpha(0.000000)
		__FUNC_2271_(registerVal4, {})
		local function __FUNC_2425_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.teamLockOn0:setAlpha(0.000000)
		__FUNC_2425_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TeammateLockonShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeammateLockon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_25D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TeammateHackingShadow:setAlpha(0.000000)
		__FUNC_25D9_(registerVal8, {})
		local function __FUNC_278D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.TeammateHacking:setAlpha(0.000000)
		__FUNC_278D_(registerVal9, {})
	end

	registerVal11.Hacking = __FUNC_1DA1_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2941_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.490000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamLockOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.teamLockOn0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TeammateLockonShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeammateLockon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TeammateHackingShadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TeammateHacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_2941_
	registerVal10.Hacking = registerVal11
	registerVal11 = {}
	local function __FUNC_2C7F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.490000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.teamLockOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.teamLockOn0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TeammateLockonShadow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeammateLockon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TeammateHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_2C7F_
	registerVal10.Locked = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hacking"
	local function __FUNC_2F58_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "currentWeapon.lockedOnEnemyTeamHacking")
		if registerVal3 then
			registerVal3 = IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_FOUND)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_2F58_
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_30B8_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "currentWeapon.lockedOnEnemyTeamTargetting")
		if registerVal3 then
			registerVal3 = IsModelValueEnumBitSet(arg1, "currentWeapon.lockedOnEnemy", Enum.RocketLauncherTargetStatesFlags.ROCKET_LAUNCHER_TARGET_FOUND)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_30B8_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.lockedOnEnemyTeamHacking")
	local function __FUNC_321B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemyTeamHacking"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_321B_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.lockedOnEnemy")
	local function __FUNC_3354_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemy"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_3354_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "currentWeapon.lockedOnEnemyTeamTargetting")
	local function __FUNC_3485_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemyTeamTargetting"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_3485_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

