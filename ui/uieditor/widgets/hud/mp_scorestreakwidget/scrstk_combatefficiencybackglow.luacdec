-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_CombatEfficiencyBackGlow = registerVal1
function CoD.ScrStk_CombatEfficiencyBackGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_CombatEfficiencyBackGlow)
	registerVal2.id = "ScrStk_CombatEfficiencyBackGlow"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 212.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 247.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 212.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 247.000000)
	registerVal3:setRGB(0.000000, 0.460000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6BF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6BF_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7BA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_89C_(arg0, arg1)
			local function __FUNC_A17_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1789.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A17_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_89C_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7BA_
	registerVal4.CombatReady = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "CombatReady"
	local function __FUNC_BC9_(arg0, arg2, arg3)
		return HasPerk(arg1, "killstreaks.momentumPercentage")
	end

	registerVal7.condition = __FUNC_BC9_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_C41_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_C41_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

