-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_MeterPanel = registerVal1
function CoD.ScrStk_MeterPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_MeterPanel)
	registerVal2.id = "ScrStk_MeterPanel"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 7.000000)
	registerVal3:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_meterfill"))
	registerVal2:addElement(registerVal3)
	registerVal2.Fill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -1.000000, 7.000000)
	registerVal4:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterfillbacker"))
	registerVal2:addElement(registerVal4)
	registerVal2.Fill2 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -4.000000, 10.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonPanel0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -51.000000, 53.000000)
	registerVal6:setTopBottom(true, false, -32.770000, 146.230000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A41_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fill2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_A41_
	local function __FUNC_C44_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_DD3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setAlpha(0.500000)
		__FUNC_DD3_(registerVal3, {})
		local function __FUNC_F85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		__FUNC_F85_(registerVal5, {})
		local function __FUNC_1139_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.260000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_1139_(registerVal6, {})
	end

	registerVal8.Combat = __FUNC_C44_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_12ED_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.260000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_12ED_
	local function __FUNC_14A2_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1634_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		__FUNC_1634_(registerVal3, {})
		local function __FUNC_17E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.500000)
		__FUNC_17E9_(registerVal5, {})
		local function __FUNC_199D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.260000)
		__FUNC_199D_(registerVal6, {})
	end

	registerVal8.DefaultState = __FUNC_14A2_
	registerVal7.Combat = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Combat"
	local function __FUNC_1B51_(arg0, arg2, arg3)
		return HasPerk(arg1, "specialty_combat_efficiency")
	end

	registerVal10.condition = __FUNC_1B51_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_1BC6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1BC6_)
	local function __FUNC_1CFF_(arg0)
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CFF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

