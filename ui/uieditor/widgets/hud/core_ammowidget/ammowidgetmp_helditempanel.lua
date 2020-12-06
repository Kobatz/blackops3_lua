-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_PanelEquipContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_HeldItemPanel = registerVal1
function CoD.AmmoWidgetMP_HeldItemPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_HeldItemPanel)
	registerVal2.id = "AmmoWidgetMP_HeldItemPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 46.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidgetMP_PanelEquipContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -23.170000, 23.170000)
	registerVal3:setTopBottom(false, false, -18.670000, 18.670000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetMPPanelEquipContainer0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_855_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_855_
	local function __FUNC_96C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A6A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(0.000000)
		__FUNC_A6A_(registerVal3, {})
	end

	registerVal5.Show = __FUNC_96C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C1D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C1D_
	local function __FUNC_D2F_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(1.000000)
		__FUNC_E25_(registerVal3, {})
	end

	registerVal5.Hide = __FUNC_D2F_
	registerVal4.Show = registerVal5
	registerVal5 = {}
	local function __FUNC_FD9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_FD9_
	local function __FUNC_10F0_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_11EE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetMPPanelEquipContainer0:setAlpha(0.000000)
		__FUNC_11EE_(registerVal3, {})
	end

	registerVal5.Show = __FUNC_10F0_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Show"
	local function __FUNC_13A1_(arg0, arg2, arg3)
		return AmICarryingEnemyFlag(arg1)
	end

	registerVal7.condition = __FUNC_13A1_
	local registerVal8 = {}
	registerVal8.stateName = "Hide"
	local function __FUNC_13FA_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_13FA_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CTF.enemyFlagCarrier")
	local function __FUNC_1444_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagCarrier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1444_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "deadSpectator.playerIndex")
	local function __FUNC_156E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "deadSpectator.playerIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_156E_)
	local function __FUNC_169B_(arg0)
		arg0.AmmoWidgetMPPanelEquipContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_169B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

