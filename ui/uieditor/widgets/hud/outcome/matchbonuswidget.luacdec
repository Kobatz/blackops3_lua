-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_BeginsIn")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_Title")
require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.Notification2xpReward")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MatchBonusWidget = registerVal1
function CoD.MatchBonusWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MatchBonusWidget)
	registerVal2.id = "MatchBonusWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal3:setRGB(0.040000, 0.800000, 1.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp"))
	registerVal2:addElement(registerVal3)
	registerVal2.XpIcon0 = registerVal3
	local registerVal4 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal4:setTopBottom(true, false, 96.000000, 128.000000)
	registerVal4.FEButtonPanel0:setAlpha(0.700000)
	registerVal4.Glow:setRGB(0.040000, 0.800000, 1.000000)
	registerVal4.Glow:setAlpha(0.120000)
	registerVal4.MatchText:setRGB(0.040000, 0.800000, 1.000000)
	registerVal4.MatchText:setTTF("fonts/escom.ttf")
	local function __FUNC_DA1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.MatchText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GameScore", "matchBonus", __FUNC_DA1_)
	registerVal2:addElement(registerVal4)
	registerVal2.MatchBonusNew0 = registerVal4
	local registerVal5 = CoD.PrematchCountdown_Title.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal5:setTopBottom(true, false, 63.390000, 95.600000)
	registerVal5.MatchText:setText(Engine.Localize("MPUI_MATCHBONUS_CAPS"))
	registerVal2:addElement(registerVal5)
	registerVal2.MatchBonusTitleNew0 = registerVal5
	local registerVal6 = CoD.Notification2xpReward.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 118.000000, 166.000000)
	registerVal6:setTopBottom(true, false, 7.000000, 55.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(1.300000)
	registerVal2:addElement(registerVal6)
	registerVal2.Notification2xpReward = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_E79_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.XpIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MatchBonusNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MatchBonusTitleNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_E79_
	local function __FUNC_1034_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Show_Two_Team = __FUNC_1034_
	local function __FUNC_1096_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.End_Transition = __FUNC_1096_
	local function __FUNC_10F6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.ShowFFAOutcome = __FUNC_10F6_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1156_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_12EE_(arg0, arg1)
			local function __FUNC_1467_(arg0, arg1)
				local function __FUNC_15DF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_15DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DF_)
			end

			if arg1.interrupted then
				__FUNC_1467_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1467_)
		end

		registerVal3:completeAnimation()
		registerVal2.XpIcon0:setAlpha(0.000000)
		__FUNC_12EE_(registerVal3, {})
		local function __FUNC_1791_(arg0, arg1)
			local function __FUNC_18E8_(arg0, arg1)
				local function __FUNC_1A63_(arg0, arg1)
					local function __FUNC_1BDB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1BDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDB_)
				end

				if arg1.interrupted then
					__FUNC_1A63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A63_)
			end

			if arg1.interrupted then
				__FUNC_18E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E8_)
		end

		registerVal4:completeAnimation()
		registerVal2.MatchBonusNew0:setAlpha(0.000000)
		__FUNC_1791_(registerVal4, {})
		local function __FUNC_1D8D_(arg0, arg1)
			local function __FUNC_1EE4_(arg0, arg1)
				local function __FUNC_205F_(arg0, arg1)
					local function __FUNC_21D7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_21D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D7_)
				end

				if arg1.interrupted then
					__FUNC_205F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_205F_)
			end

			if arg1.interrupted then
				__FUNC_1EE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EE4_)
		end

		registerVal5:completeAnimation()
		registerVal2.MatchBonusTitleNew0:setAlpha(0.000000)
		__FUNC_1D8D_(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_1156_
	registerVal7.Shown = registerVal8
	registerVal8 = {}
	local function __FUNC_2389_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.XpIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_259B_(arg0, arg1)
			local function __FUNC_26F0_(arg0, arg1)
				local function __FUNC_286B_(arg0, arg1)
					local function __FUNC_29E3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_29E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29E3_)
				end

				if arg1.interrupted then
					__FUNC_286B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_286B_)
			end

			if arg1.interrupted then
				__FUNC_26F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F0_)
		end

		registerVal4:completeAnimation()
		registerVal2.MatchBonusNew0:setAlpha(0.000000)
		__FUNC_259B_(registerVal4, {})
		local function __FUNC_2B95_(arg0, arg1)
			local function __FUNC_2CEC_(arg0, arg1)
				local function __FUNC_2E67_(arg0, arg1)
					local function __FUNC_2FDF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2FDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FDF_)
				end

				if arg1.interrupted then
					__FUNC_2E67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E67_)
			end

			if arg1.interrupted then
				__FUNC_2CEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CEC_)
		end

		registerVal5:completeAnimation()
		registerVal2.MatchBonusTitleNew0:setAlpha(0.000000)
		__FUNC_2B95_(registerVal5, {})
		local function __FUNC_3191_(arg0, arg1)
			local function __FUNC_330B_(arg0, arg1)
				local function __FUNC_3483_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3483_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3483_)
			end

			if arg1.interrupted then
				__FUNC_330B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_330B_)
		end

		registerVal6:completeAnimation()
		registerVal2.Notification2xpReward:setAlpha(0.000000)
		__FUNC_3191_(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2389_
	registerVal7.DoubleXP = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Shown"
	local function __FUNC_3635_(arg0, arg2, arg3)
		local registerVal3 = ShowMatchBonus(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_3635_
	local registerVal11 = {}
	registerVal11.stateName = "DoubleXP"
	local function __FUNC_36B8_(arg0, arg2, arg3)
		local registerVal3 = ShowMatchBonus(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsDoubleXP(arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_36B8_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "gameScore.isRoundEnd")
	local function __FUNC_3738_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.isRoundEnd"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3738_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "gameScore.matchBonus")
	local function __FUNC_3862_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.matchBonus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3862_)
	local function __FUNC_398A_(arg0)
		arg0.MatchBonusNew0:close()
		arg0.MatchBonusTitleNew0:close()
		arg0.Notification2xpReward:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_398A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

