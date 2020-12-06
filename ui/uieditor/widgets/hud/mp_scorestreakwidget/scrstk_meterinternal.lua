-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_CombatEfficiencyPulse")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_MeterKarat")
local function __FUNC_289_(arg0, arg1)
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.CombatEfficiencyPulse:getLocalTopBottom()
	local registerVal7, registerVal8, registerVal9, registerVal10 = arg0:getLocalTopBottom()
	local registerVal11, registerVal12, registerVal13, registerVal14 = arg0.FocusMeterFillWhite:getLocalTopBottom()
	arg0.CombatEfficiencyPulse:setTopBottom(true, true, (registerVal5 + ((registerVal10 + registerVal6) - registerVal5)), registerVal6)
	arg0.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	arg0.FocusMeterFill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_51D_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 ~= nil then
			if registerVal1 < 0.000000 then
				arg0.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0.FocusMeterFill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0.CombatEfficiencyPulse:setTopBottom(true, true, (registerVal5 + ((registerVal10 + registerVal6) - registerVal5)), registerVal6)
				arg0.FocusMeterFillWhite:setTopBottom(false, false, (((registerVal10 / 2.000000) - registerVal10) + 4.000000), (((registerVal10 / 2.000000) - registerVal10) - 4.000000))
			end
			local registerVal2 = HasPerk(arg1, "specialty_combat_efficiency")
			if registerVal2 then
				arg0.CombatEfficiencyPulse:playClip("ScoreAdded")
				arg0.FocusMeterFillWhite:playClip("ScoreAdded")
			end
			arg0.CombatEfficiencyPulse:completeAnimation()
			arg0.CombatEfficiencyPulse:setTopBottom(true, true, (registerVal5 + (((registerVal10 + registerVal6) - registerVal5) * (1.000000 - 0.000000))), registerVal6)
			arg0.CombatEfficiencyPulse:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0.CombatEfficiencyPulse:setTopBottom(true, true, (registerVal5 + (((registerVal10 + registerVal6) - registerVal5) * (1.000000 - registerVal1))), registerVal6)
			arg0.FocusMeterFillWhite:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0.FocusMeterFillWhite:setTopBottom(false, false, (((registerVal10 / 2.000000) - (registerVal10 * registerVal1)) + 4.000000), (((registerVal10 / 2.000000) - (registerVal10 * registerVal1)) - 4.000000))
			arg0.Fill:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0.Fill:setShaderVector(2.000000, registerVal1, 0.000000, 0.000000, 0.000000)
			arg0.FocusMeterFill:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			arg0.FocusMeterFill:setShaderVector(2.000000, registerVal1, 0.000000, 0.000000, 0.000000)
		end
	end

	arg0.Fill:subscribeToGlobalModel(arg1, "KillstreakRewards", "momentumPercentage", __FUNC_51D_)
	local function __FUNC_A6B_()
		arg0.Fill:close()
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_A6B_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScrStk_MeterInternal = registerVal2
local function __FUNC_AC9_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_MeterInternal)
	registerVal2.id = "ScrStk_MeterInternal"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -6.000000, 2.000000)
	registerVal3:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal3:setRGB(0.510000, 0.550000, 0.640000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_meterfill"))
	registerVal2:addElement(registerVal3)
	registerVal2.Back = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -6.000000, 2.000000)
	registerVal4:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal4:setRGB(0.510000, 0.550000, 0.640000)
	registerVal4:setXRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_meterfill"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Fill = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -6.000000, 2.000000)
	registerVal5:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal5:setRGB(0.220000, 0.380000, 0.520000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterback"))
	registerVal2:addElement(registerVal5)
	registerVal2.FocusMeterBack = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -6.000000, 2.000000)
	registerVal6:setTopBottom(false, false, 60.000000, -60.000000)
	registerVal6:setRGB(0.150000, 0.560000, 0.880000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterfill"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal6:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusMeterFill = registerVal6
	local registerVal7 = CoD.ScrStk_CombatEfficiencyPulse.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -79.500000, 75.500000)
	registerVal7:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.CombatEfficiencyPulse = registerVal7
	local registerVal8 = CoD.ScrStk_MeterKarat.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -6.000000, 2.000000)
	registerVal8:setTopBottom(false, false, 53.000000, 61.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusMeterFillWhite = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_16D1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Back:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusMeterBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusMeterFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CombatEfficiencyPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusMeterFillWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_16D1_
	local function __FUNC_19A4_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1C8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Back:setAlpha(0.500000)
		__FUNC_1C8D_(registerVal3, {})
		local function __FUNC_1E41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(1.000000)
		__FUNC_1E41_(registerVal4, {})
		local function __FUNC_1FF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.220000, 0.380000, 0.520000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FocusMeterBack:setRGB(0.220000, 0.380000, 0.520000)
		registerVal2.FocusMeterBack:setAlpha(0.000000)
		__FUNC_1FF5_(registerVal5, {})
		local function __FUNC_21DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FocusMeterFill:setAlpha(0.000000)
		__FUNC_21DC_(registerVal6, {})
		local function __FUNC_2391_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CombatEfficiencyPulse:setAlpha(0.000000)
		__FUNC_2391_(registerVal7, {})
		local function __FUNC_2545_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.FocusMeterFillWhite:setAlpha(0.000000)
		__FUNC_2545_(registerVal8, {})
	end

	registerVal10.CombatEfficiency = __FUNC_19A4_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_26F9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Back:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusMeterBack:setRGB(0.220000, 0.380000, 0.520000)
		registerVal2.FocusMeterBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusMeterFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CombatEfficiencyPulse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusMeterFillWhite:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_26F9_
	local function __FUNC_2A0A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2CEC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Back:setAlpha(0.000000)
		__FUNC_2CEC_(registerVal3, {})
		local function __FUNC_2EA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		__FUNC_2EA1_(registerVal4, {})
		local function __FUNC_3055_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.220000, 0.380000, 0.520000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FocusMeterBack:setRGB(0.220000, 0.380000, 0.520000)
		registerVal2.FocusMeterBack:setAlpha(0.000000)
		__FUNC_3055_(registerVal5, {})
		local function __FUNC_323C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FocusMeterFill:setAlpha(1.000000)
		__FUNC_323C_(registerVal6, {})
		local function __FUNC_33F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.CombatEfficiencyPulse:setAlpha(1.000000)
		__FUNC_33F1_(registerVal7, {})
		local function __FUNC_35A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.FocusMeterFillWhite:setAlpha(1.000000)
		__FUNC_35A5_(registerVal8, {})
	end

	registerVal10.DefaultState = __FUNC_2A0A_
	registerVal9.CombatEfficiency = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "CombatEfficiency"
	local function __FUNC_3759_(arg0, arg2, arg3)
		return HasPerk(arg1, "specialty_combat_efficiency")
	end

	registerVal12.condition = __FUNC_3759_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_37CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_37CE_)
	local function __FUNC_3907_(arg0)
		arg0.CombatEfficiencyPulse:close()
		arg0.FocusMeterFillWhite:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3907_)
	if __FUNC_289_ then
		__FUNC_289_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScrStk_MeterInternal.new = __FUNC_AC9_
