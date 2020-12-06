-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DetectNearbyEnemies_CloseLeft = registerVal1
function CoD.DetectNearbyEnemies_CloseLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DetectNearbyEnemies_CloseLeft)
	registerVal2.id = "DetectNearbyEnemies_CloseLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 112.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 160.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_perkwidget_6sense_sideinner"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.DetectNearbyEnemiesCloseLeft = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_727_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DetectNearbyEnemiesCloseLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_727_
	local function __FUNC_838_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_932_(arg0, arg1)
			local function __FUNC_AAB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAB_)
		end

		registerVal3:completeAnimation()
		registerVal2.DetectNearbyEnemiesCloseLeft:setAlpha(0.660000)
		__FUNC_932_(registerVal3, {})
	end

	registerVal5.EnemyDetected = __FUNC_838_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C5D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DetectNearbyEnemiesCloseLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C5D_
	local function __FUNC_D6B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.DetectNearbyEnemiesCloseLeft:setAlpha(1.000000)
		__FUNC_E5D_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_D6B_
	registerVal4.EnemyDetected = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "EnemyDetected"
	local function __FUNC_1011_(arg0, arg2, arg3)
		return IsEnemyDetected(arg1, "left", "close")
	end

	registerVal7.condition = __FUNC_1011_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "hudItems.sixthsense")
	local function __FUNC_108A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.sixthsense"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_108A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

