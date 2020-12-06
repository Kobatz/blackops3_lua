-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_CombatEfficiencyScrollFX")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_CombatEfficiencyPulse = registerVal1
function CoD.ScrStk_CombatEfficiencyPulse.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_CombatEfficiencyPulse)
	registerVal2.id = "ScrStk_CombatEfficiencyPulse"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 117.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScrStk_CombatEfficiencyScrollFX.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -19.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.840000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScrStkCombatEfficiencyScrollFX0 = registerVal3
	local registerVal4 = CoD.ScrStk_CombatEfficiencyScrollFX.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 0.000000, 19.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.840000, 0.980000, 1.000000)
	registerVal4:setYRot(180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ScrStkCombatEfficiencyScrollFX00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -35.190000, 36.810000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.790000, 1.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_fillglowvert"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -55.690000, 57.310000)
	registerVal6:setTopBottom(false, false, -58.500000, 58.500000)
	registerVal6:setRGB(0.000000, 0.600000, 1.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_tacmode_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_998_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_998_
	local function __FUNC_AE8_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_D04_(arg0, arg1)
			local function __FUNC_EB7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 489.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -42.000000, 42.000000)
				arg0:setTopBottom(true, true, 0.000000, 0.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -22.010000, 20.680000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB7_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -21.190000, 19.810000)
		registerVal2.Image0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_D04_(registerVal5, {})
		local function __FUNC_10CF_(arg0, arg1)
			local function __FUNC_127F_(arg0, arg1)
				local function __FUNC_142F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -55.690000, 57.310000)
					arg0:setTopBottom(false, false, -58.500000, 58.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_142F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -55.070000, 56.510000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142F_)
			end

			if arg1.interrupted then
				__FUNC_127F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -27.310000, 20.510000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127F_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -24.840000, 17.310000)
		registerVal2.Glow:setTopBottom(false, false, -58.500000, 58.500000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_10CF_(registerVal6, {})
	end

	registerVal8.ScoreAdded = __FUNC_AE8_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1651_(arg0)
		arg0.ScrStkCombatEfficiencyScrollFX0:close()
		arg0.ScrStkCombatEfficiencyScrollFX00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1651_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

