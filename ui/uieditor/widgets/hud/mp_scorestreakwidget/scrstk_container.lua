-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_CombatEfficiencyBackGlow")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_PanelContainer")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_Meter")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_Button")
local function __FUNC_32B_(arg0, arg1)
	if DataSources["KillstreakRewardsList"] == nil then
		local registerVal4 = {}
		local function __FUNC_707_(arg0)
			return CoD.CACUtility.maxScorestreaks
		end

		registerVal4.getCount = __FUNC_707_
		local function __FUNC_78A_(arg0, arg1, arg2)
			local registerVal4 = Engine.GetModelForController(arg0)
			local registerVal3 = Engine.GetModel(registerVal4, ("killstreaks.killstreak" .. (4.000000 - arg2)))
			return registerVal3
		end

		registerVal4.getItem = __FUNC_78A_
		DataSources["KillstreakRewardsList"] = registerVal4
	end
	registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "killstreaks")
	registerVal4 = Engine.CreateModel(registerVal3, "targetMomentum")
	local registerVal5 = Engine.CreateModel(registerVal3, "momentumPercentage")
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "rewardMomentum")
	if DataSources.KillstreakRewards == nil then
		local registerVal8 = {}
		local function __FUNC_856_(arg0)
			local registerVal1 = Engine.GetModelForController(arg0)
			return Engine.GetModel(registerVal1, "killstreaks")
		end

		registerVal8.getModel = __FUNC_856_
		DataSources.KillstreakRewards = registerVal8
	end
	registerVal7 = Engine.GetModel(registerVal3, "killstreak0.momentumCost")
	if registerVal7 == nil then
		registerVal8 = Engine.CreateModel(registerVal3, "killstreak0.momentumCost")
	end
	local registerVal9 = Engine.GetModelValue(registerVal8)
	registerVal9 = Engine.GetModelValue(registerVal8)
	if registerVal9 == nil or registerVal9 == 0.000000 then
		local function __FUNC_90E_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			local registerVal2 = Engine.GetModelValue(registerVal6)
			if registerVal1 ~= nil and registerVal2 < registerVal1 then
				Engine.SetModelValue(registerVal4, registerVal1)
			end
		end

		arg0:subscribeToModel(registerVal8, __FUNC_90E_)
	else
		registerVal9 = Engine.GetModelValue(registerVal8)
		Engine.SetModelValue(registerVal4, 0.000000)
	end
	local function __FUNC_9D7_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 ~= nil then
			if arg0.timer ~= nil then
				arg0.timer:close()
				arg0.timer = nil
			end
			for index3=0.000000, (CoD.CACUtility.maxScorestreaks - 1.000000), 1.000000 do
				local registerVal8 = Engine.GetModelForController(arg1)
				local registerVal7 = Engine.GetModel(registerVal8, ("killstreaks.killstreak" .. index3 .. ".momentumCost"))
				registerVal8 = Engine.GetModelValue(registerVal7)
				if registerVal7 and registerVal8 and registerVal1 < registerVal8 then
					local registerVal10 = Engine.GetModelForController(arg1)
					local registerVal9 = Engine.GetModel(registerVal10, ("killstreaks.killstreak" .. (((index3 + CoD.CACUtility.maxScorestreaks) - 1.000000) % CoD.CACUtility.maxScorestreaks) .. ".rewardAmmo"))
					registerVal10 = Engine.GetModelValue(registerVal9)
					if registerVal9 ~= registerVal8 and registerVal10 ~= 0.000000 then
						Engine.SetModelValue(registerVal5, 1.000000)
						Engine.SetModelValue(registerVal4, 0.000000)
						local function __FUNC_E41_(arg0, arg1)
							Engine.SetModelValue(registerVal5, ((registerVal1 - 0.000000) / (registerVal8 - 0.000000)))
							Engine.SetModelValue(registerVal4, (registerVal8 - registerVal1))
						end

						arg0:registerEventHandler("time_up", __FUNC_E41_)
						local registerVal11 = LUI.UITimer.new(1000.000000, "time_up", true)
						arg0.timer = registerVal11
						arg0:addElement(arg0.timer)
					else
						Engine.SetModelValue(registerVal4, (registerVal8 - registerVal1))
						Engine.SetModelValue(registerVal5, ((registerVal1 - 0.000000) / (registerVal8 - 0.000000)))
					end
				else
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_9D7_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScrStk_Container = registerVal2
local function __FUNC_EEB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_32B_ then
		__FUNC_32B_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_Container)
	registerVal2.id = "ScrStk_Container"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 109.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScrStk_CombatEfficiencyBackGlow.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -152.000000, 60.000000)
	registerVal3:setTopBottom(true, false, -24.000000, 223.000000)
	registerVal3:setAlpha(0.530000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScrStkCombatEfficiencyBackGlow0 = registerVal3
	local registerVal4 = CoD.ScrStk_PanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -65.500000, -4.500000)
	registerVal4:setTopBottom(true, false, 4.500000, 170.500000)
	registerVal4:setZoom(-20.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Scr2"
	local function __FUNC_194E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_194E_
	local registerVal9 = {}
	registerVal9.stateName = "Scr3"
	local function __FUNC_1999_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_1999_
	local registerVal10 = {}
	registerVal10.stateName = "Scr4"
	local function __FUNC_19E5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_19E5_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.ScrStkPanelContainer0 = registerVal4
	local registerVal5 = CoD.ScrStk_Meter.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -109.000000, -59.000000)
	registerVal5:setTopBottom(true, false, 40.000000, 170.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ScrStkMeter1 = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, -11.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(false, true, -65.460000, 3.540000)
	registerVal6:setTopBottom(true, false, 0.000000, 175.000000)
	registerVal6:setDataSource("KillstreakRewardsList")
	registerVal6:setWidgetType(CoD.ScrStk_Button)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(-11.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ScrStkButtons = registerVal6
	registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1A30_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A30_
	local function __FUNC_1C5F_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1E65_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.530000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.000000)
		__FUNC_1E65_(registerVal3, {})
		local function __FUNC_2019_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(0.000000)
		__FUNC_2019_(registerVal4, {})
		local function __FUNC_21CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(0.000000)
		__FUNC_21CD_(registerVal5, {})
		local function __FUNC_2381_(arg0, arg1)
			local function __FUNC_24D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_24D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24D8_)
		end

		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(0.000000)
		__FUNC_2381_(registerVal6, {})
	end

	registerVal8.HudStart = __FUNC_1C5F_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_268D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.530000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_268D_
	local function __FUNC_28C0_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2ACE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.530000)
		__FUNC_2ACE_(registerVal3, {})
		local function __FUNC_2C81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(1.000000)
		__FUNC_2C81_(registerVal4, {})
		local function __FUNC_2E35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(1.000000)
		__FUNC_2E35_(registerVal5, {})
		local function __FUNC_2FE9_(arg0, arg1)
			local function __FUNC_3140_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3140_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3140_)
		end

		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(1.000000)
		__FUNC_2FE9_(registerVal6, {})
	end

	registerVal8.HudStop = __FUNC_28C0_
	registerVal7.HudStart = registerVal8
	registerVal8 = {}
	local function __FUNC_32F5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.530000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_32F5_
	local function __FUNC_3528_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_3736_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ScrStkCombatEfficiencyBackGlow0:setAlpha(0.530000)
		__FUNC_3736_(registerVal3, {})
		local function __FUNC_38E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ScrStkPanelContainer0:setAlpha(1.000000)
		__FUNC_38E9_(registerVal4, {})
		local function __FUNC_3A9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ScrStkMeter1:setAlpha(1.000000)
		__FUNC_3A9D_(registerVal5, {})
		local function __FUNC_3C51_(arg0, arg1)
			local function __FUNC_3DA8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3DA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DA8_)
		end

		registerVal6:completeAnimation()
		registerVal2.ScrStkButtons:setAlpha(1.000000)
		__FUNC_3C51_(registerVal6, {})
	end

	registerVal8.HudStop = __FUNC_3528_
	registerVal7.ShowForCodCaster = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "HudStart"
	local function __FUNC_3F5D_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_3F5D_
	local registerVal11 = {}
	registerVal11.stateName = "ShowForCodCaster"
	local function __FUNC_3F90_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_scorestreaks", 1.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_3F90_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "factions.isCoDCaster")
	local function __FUNC_404C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_404C_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_4176_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_4176_)
	registerVal6.id = "ScrStkButtons"
	local function __FUNC_42AA_(arg0, arg1)
		local registerVal2 = arg0.ScrStkButtons:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_42AA_)
	local function __FUNC_43B1_(arg0)
		arg0.ScrStkCombatEfficiencyBackGlow0:close()
		arg0.ScrStkPanelContainer0:close()
		arg0.ScrStkMeter1:close()
		arg0.ScrStkButtons:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_43B1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScrStk_Container.new = __FUNC_EEB_
