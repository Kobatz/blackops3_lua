-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.timerframeblur")
require("ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlLine")
require("ui.uieditor.widgets.Freerun.FR_NewBestTime")
local function __FUNC_2A3_(arg0, arg1, arg2, arg3)
	if not arg0.totalPenalty then
		arg0.totalPenalty = 0.000000
	end
	if arg0.totalPenalty == 0.000000 then
		arg0.totalPenalty = (arg0.totalPenalty + arg3)
		PlayClip(arg0, "PenaltyStart", arg1)
		local function __FUNC_4B6_(arg0, arg2)
			arg0:registerEventHandler("clip_over", CoD.NullFunction)
			PlayClip(arg0, "PenaltyDuration", arg1)
			local function __FUNC_5A3_(arg0, arg2)
				arg0:registerEventHandler("clip_over", CoD.NullFunction)
				arg0.bulletPenaltyStarted = false
				PlayClip(arg0, "PenaltyEnd", arg1)
			end

			arg0:registerEventHandler("clip_over", __FUNC_5A3_)
		end

		arg0:registerEventHandler("clip_over", __FUNC_4B6_)
	else
		arg0.totalPenalty = (arg0.totalPenalty + arg3)
		PlayClip(arg0, "PenaltyDuration", arg1)
		local function __FUNC_69A_(arg0, arg2)
			arg0:registerEventHandler("clip_over", CoD.NullFunction)
			PlayClip(arg0, "PenaltyEnd", arg1)
			local function __FUNC_77E_(arg0, arg1)
				arg0:registerEventHandler("clip_over", CoD.NullFunction)
				arg0.totalPenalty = 0.000000
			end

			arg0:registerEventHandler("clip_over", __FUNC_77E_)
		end

		arg0:registerEventHandler("clip_over", __FUNC_69A_)
	end
	arg0.PenaltyText:setText(Engine.Localize("MENU_PENALTY_TIME", tostring(arg0.totalPenalty)))
end

local function __FUNC_837_(arg0, arg1, arg2)
	local function __FUNC_921_(arg3)
		local registerVal1 = Engine.GetModelValue(arg3)
		if 0.000000 < registerVal1 then
			__FUNC_2A3_(arg0, arg1, arg2, 5.000000)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "FreeRun", "freeRunInfo.retries", __FUNC_921_)
	local function __FUNC_9B5_(arg3)
		local registerVal1 = Engine.GetModelValue(arg3)
		if 0.000000 < registerVal1 then
			__FUNC_2A3_(arg0, arg1, arg2, 1.000000)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "FreeRun", "freeRunInfo.bulletPenalty", __FUNC_9B5_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FR_TimerWidget = registerVal3
local function __FUNC_A49_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_TimerWidget)
	registerVal2.id = "FR_TimerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 151.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.timerframeblur.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 234.750000)
	registerVal3:setTopBottom(true, false, 3.830000, 66.430000)
	registerVal3:setRGB(0.730000, 0.730000, 0.730000)
	registerVal2:addElement(registerVal3)
	registerVal2.timerframeblur = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 49.000000, 186.000000)
	registerVal4:setTopBottom(true, false, 11.810000, 58.440000)
	registerVal4:setRGB(1.000000, 0.860000, 0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_19CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(NumberAsTime(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "currentTime", true, __FUNC_19CD_)
	registerVal2:addElement(registerVal4)
	registerVal2.TimerTextBox = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -8.000000, 246.500000)
	registerVal5:setTopBottom(true, false, 63.880000, 122.550000)
	registerVal5:setRGB(1.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_02"))
	registerVal2:addElement(registerVal5)
	registerVal2.PenaltyBox = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 234.750000)
	registerVal6:setTopBottom(true, false, 67.430000, 88.210000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("PENALTY +1 SEC"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.PenaltyText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 51.000000, 184.000000)
	registerVal7:setTopBottom(true, false, 60.880000, 85.880000)
	registerVal7:setRGB(1.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("+00:05:000"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.FaultText = registerVal7
	local registerVal8 = CoD.Outcome_title_PnlLine.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, 0.000000, 23.000000)
	registerVal8:setTopBottom(true, false, 0.430000, 69.880000)
	registerVal8:setRGB(0.730000, 0.730000, 0.730000)
	registerVal8:setScale(1.100000)
	registerVal2:addElement(registerVal8)
	registerVal2.OutcometitlePnlLineRight = registerVal8
	local registerVal9 = CoD.Outcome_title_PnlLine.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -258.000000, -235.000000)
	registerVal9:setTopBottom(true, false, 0.430000, 69.880000)
	registerVal9:setRGB(0.730000, 0.730000, 0.730000)
	registerVal9:setScale(1.100000)
	registerVal2:addElement(registerVal9)
	registerVal2.OutcometitlePnlLine0 = registerVal9
	local registerVal10 = CoD.FR_NewBestTime.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 16.000000, 220.000000)
	registerVal10:setTopBottom(true, false, 63.430000, 134.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FRNewBestTime = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1AA4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_1AA4_
	local function __FUNC_1B06_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1C87_(arg0, arg1)
			local function __FUNC_1E0A_(arg0, arg1)
				local function __FUNC_1F60_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.860000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1F60_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 3000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F60_)
			end

			if arg1.interrupted then
				__FUNC_1E0A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0A_)
		end

		registerVal4:completeAnimation()
		registerVal2.TimerTextBox:setRGB(1.000000, 0.860000, 0.000000)
		__FUNC_1C87_(registerVal4, {})
		local function __FUNC_2125_(arg0, arg1)
			local function __FUNC_229F_(arg0, arg1)
				local function __FUNC_23F4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_23F4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23F4_)
			end

			if arg1.interrupted then
				__FUNC_229F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_229F_)
		end

		registerVal7:completeAnimation()
		registerVal2.FaultText:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.FaultText:setAlpha(0.000000)
		__FUNC_2125_(registerVal7, {})
	end

	registerVal12.Penalty = __FUNC_1B06_
	local function __FUNC_25D2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.FaultAnim = __FUNC_25D2_
	local function __FUNC_2632_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.RetryAnim = __FUNC_2632_
	local function __FUNC_2692_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.SetCheckpointDelta = __FUNC_2692_
	local function __FUNC_26F2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.Less = __FUNC_26F2_
	local function __FUNC_2752_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.More = __FUNC_2752_
	local function __FUNC_27B2_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2965_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TimerTextBox:setRGB(1.000000, 0.860000, 0.000000)
		__FUNC_2965_(registerVal4, {})
		local function __FUNC_2B24_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PenaltyBox:setAlpha(0.000000)
		__FUNC_2B24_(registerVal5, {})
		local function __FUNC_2CD9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.PenaltyText:setAlpha(0.000000)
		__FUNC_2CD9_(registerVal6, {})
	end

	registerVal12.PenaltyStart = __FUNC_27B2_
	local function __FUNC_2E8D_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_303C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TimerTextBox:setRGB(1.000000, 0.000000, 0.000000)
		__FUNC_303C_(registerVal4, {})
		local function __FUNC_31FC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PenaltyBox:setAlpha(1.000000)
		__FUNC_31FC_(registerVal5, {})
		local function __FUNC_33B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.PenaltyText:setAlpha(1.000000)
		__FUNC_33B1_(registerVal6, {})
	end

	registerVal12.PenaltyDuration = __FUNC_2E8D_
	local function __FUNC_3565_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3714_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.860000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.TimerTextBox:setRGB(1.000000, 0.000000, 0.000000)
		__FUNC_3714_(registerVal4, {})
		local function __FUNC_38D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.PenaltyBox:setAlpha(1.000000)
		__FUNC_38D9_(registerVal5, {})
		local function __FUNC_3A8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.PenaltyText:setAlpha(1.000000)
		__FUNC_3A8D_(registerVal6, {})
	end

	registerVal12.PenaltyEnd = __FUNC_3565_
	local function __FUNC_3C41_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.PenaltyBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PenaltyText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal12.NotRunning = __FUNC_3C41_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_3D9B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_3D9B_
	registerVal11.Invisible = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_3DFA_(arg0)
		local registerVal2 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
		registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
		registerVal2 = ShouldShowFreerunTimeClips(arg1)
		if registerVal2 and registerVal2 and registerVal2 then
			PlayClip(registerVal2, "More", arg1)
		else
			registerVal2 = IsModelValueGreaterThanOrEqualTo(arg1, "FreeRun.timer.timeAdjustment", 0.001000)
			registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.timer.timeAdjustmentNegative", 0.000000)
			registerVal2 = ShouldShowFreerunTimeClips(arg1)
			if registerVal2 and not registerVal2 and registerVal2 then
				PlayClip(registerVal2, "Less", arg1)
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "FreeRun.timer.timeAdjustment", __FUNC_3DFA_)
	local function __FUNC_3FE3_(arg0)
		local registerVal2 = IsModelValueEqualTo(arg1, "FreeRun.runState", 1.000000)
		if not registerVal2 then
			PlayClip(registerVal2, "NotRunning", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "FreeRun.runState", __FUNC_3FE3_)
	local function __FUNC_40A2_(arg0)
		arg0.timerframeblur:close()
		arg0.OutcometitlePnlLineRight:close()
		arg0.OutcometitlePnlLine0:close()
		arg0.FRNewBestTime:close()
		arg0.TimerTextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_40A2_)
	if __FUNC_837_ then
		__FUNC_837_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FR_TimerWidget.new = __FUNC_A49_
