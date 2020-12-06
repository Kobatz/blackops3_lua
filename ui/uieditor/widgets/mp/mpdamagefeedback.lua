-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MPDamageFeedback_PerkFeedback")
local function __FUNC_21C_(arg0, arg1, arg2)
	local function __FUNC_2B7_(arg0, arg2)
		if arg2 == "DefaultState" then
			if arg0.moveToDefaultTimer then
				arg0.moveToDefaultTimer:close()
				arg0.moveToDefaultTimer = nil
			else
				if arg0.moveToDefaultTimer then
					arg0.moveToDefaultTimer:reset()
				else
					local function __FUNC_431_()
						local registerVal0 = arg0:getModel(arg1, "damageFeedbackState")
						if registerVal0 then
							Engine.SetModelValue(registerVal0, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_NONE)
						end
					end

					local registerVal2 = LUI.UITimer.newElementTimer(200.000000, true, __FUNC_431_)
					arg0.moveToDefaultTimer = registerVal2
					arg0:addElement(arg0.moveToDefaultTimer)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_2B7_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MPDamageFeedback = registerVal2
local function __FUNC_551_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPDamageFeedback)
	registerVal2.id = "MPDamageFeedback"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MPDamageFeedback_PerkFeedback.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal3:setTopBottom(false, true, -40.000000, 40.000000)
	local function __FUNC_DB6_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_DB6_)
	registerVal2:addElement(registerVal3)
	registerVal2.perkFeedback = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_damage_feedback"))
	registerVal2:addElement(registerVal4)
	registerVal2.damage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_damage_feedback_glow_orange"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.death = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_E06_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.damage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.damage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.death:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E06_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_107B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1333_(arg0, arg1)
			local function __FUNC_1488_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -1.000000, 1.000000)
				arg0:setTopBottom(true, true, -1.000000, 1.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1488_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1488_)
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.damage:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.damage:setRGB(0.840000, 0.990000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_1333_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.death:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_107B_
	local function __FUNC_16C2_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_191F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_191F_(registerVal3, {})
		local function __FUNC_1AD1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 1.000000)
			arg0:setTopBottom(true, true, -1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.damage:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_1AD1_(registerVal4, {})
		local function __FUNC_1CEB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 1.000000)
			arg0:setTopBottom(true, true, -1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.death:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.death:setAlpha(0.000000)
		__FUNC_1CEB_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_16C2_
	registerVal6.Stage1 = registerVal7
	registerVal7 = {}
	local function __FUNC_1F03_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_21C0_(arg0, arg1)
			local function __FUNC_2318_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -2.000000, 2.000000)
				arg0:setTopBottom(true, true, -2.000000, 2.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2318_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2318_)
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.damage:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.damage:setRGB(0.840000, 0.990000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_21C0_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.death:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1F03_
	local function __FUNC_2557_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_27B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_27B8_(registerVal3, {})
		local function __FUNC_296D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -2.000000, 2.000000)
			arg0:setTopBottom(true, true, -2.000000, 2.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.damage:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_296D_(registerVal4, {})
		local function __FUNC_2B87_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -2.000000, 2.000000)
			arg0:setTopBottom(true, true, -2.000000, 2.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.death:setTopBottom(true, true, -2.000000, 2.000000)
		registerVal2.death:setAlpha(0.000000)
		__FUNC_2B87_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_2557_
	registerVal6.Stage2 = registerVal7
	registerVal7 = {}
	local function __FUNC_2D9F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3057_(arg0, arg1)
			local function __FUNC_31AC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -3.000000, 3.000000)
				arg0:setTopBottom(true, true, -3.000000, 3.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_31AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31AC_)
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -3.000000, 3.000000)
		registerVal2.damage:setTopBottom(true, true, -3.000000, 3.000000)
		registerVal2.damage:setRGB(0.840000, 0.990000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_3057_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -3.000000, 3.000000)
		registerVal2.death:setTopBottom(true, true, -3.000000, 3.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2D9F_
	local function __FUNC_33EB_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3647_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_3647_(registerVal3, {})
		local function __FUNC_37F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -3.000000, 3.000000)
			arg0:setTopBottom(true, true, -3.000000, 3.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -3.000000, 3.000000)
		registerVal2.damage:setTopBottom(true, true, -3.000000, 3.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_37F9_(registerVal4, {})
		local function __FUNC_3A13_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -3.000000, 3.000000)
			arg0:setTopBottom(true, true, -3.000000, 3.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -3.000000, 3.000000)
		registerVal2.death:setTopBottom(true, true, -3.000000, 3.000000)
		registerVal2.death:setAlpha(0.000000)
		__FUNC_3A13_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_33EB_
	registerVal6.Stage3 = registerVal7
	registerVal7 = {}
	local function __FUNC_3C2B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3EE8_(arg0, arg1)
			local function __FUNC_4040_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -4.000000, 4.000000)
				arg0:setTopBottom(true, true, -4.000000, 4.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4040_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4040_)
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.damage:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.damage:setRGB(0.840000, 0.990000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_3EE8_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.death:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_3C2B_
	local function __FUNC_427F_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_44E0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_44E0_(registerVal3, {})
		local function __FUNC_4695_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(true, true, -4.000000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.damage:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_4695_(registerVal4, {})
		local function __FUNC_48AF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(true, true, -4.000000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.death:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.death:setAlpha(0.000000)
		__FUNC_48AF_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_427F_
	registerVal6.Stage4 = registerVal7
	registerVal7 = {}
	local function __FUNC_4AC7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.damage:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.damage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.death:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.death:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_4AC7_
	local function __FUNC_4D4A_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_4FAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_4FAC_(registerVal3, {})
		local function __FUNC_5161_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.damage:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.damage:setAlpha(0.000000)
		__FUNC_5161_(registerVal4, {})
		local function __FUNC_537B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.death:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.death:setAlpha(1.000000)
		__FUNC_537B_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_4D4A_
	registerVal6.Death = registerVal7
	registerVal7 = {}
	local function __FUNC_5593_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_5850_(arg0, arg1)
			local function __FUNC_59A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -5.000000, 5.000000)
				arg0:setTopBottom(true, true, -5.000000, 5.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_59A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59A8_)
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.damage:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.damage:setRGB(0.840000, 0.990000, 1.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_5850_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.death:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.death:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_5593_
	local function __FUNC_5BE7_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_5E48_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.perkFeedback:setAlpha(1.000000)
		__FUNC_5E48_(registerVal3, {})
		local function __FUNC_5FFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.damage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.damage:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.damage:setAlpha(1.000000)
		__FUNC_5FFD_(registerVal4, {})
		local function __FUNC_6217_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -5.000000, 5.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.death:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.death:setTopBottom(true, true, -5.000000, 5.000000)
		registerVal2.death:setAlpha(0.000000)
		__FUNC_6217_(registerVal5, {})
	end

	registerVal7.DefaultState = __FUNC_5BE7_
	registerVal6.Stage5 = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Stage1"
	local function __FUNC_642F_(arg0, arg1, arg2)
		return DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_1)
	end

	registerVal9.condition = __FUNC_642F_
	local registerVal10 = {}
	registerVal10.stateName = "Stage2"
	local function __FUNC_64EF_(arg0, arg1, arg2)
		return DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_2)
	end

	registerVal10.condition = __FUNC_64EF_
	local registerVal11 = {}
	registerVal11.stateName = "Stage3"
	local function __FUNC_65AF_(arg0, arg1, arg2)
		return DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_3)
	end

	registerVal11.condition = __FUNC_65AF_
	local registerVal12 = {}
	registerVal12.stateName = "Stage4"
	local function __FUNC_666F_(arg0, arg1, arg2)
		return DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_4)
	end

	registerVal12.condition = __FUNC_666F_
	local registerVal13 = {}
	registerVal13.stateName = "Death"
	local function __FUNC_672F_(arg0, arg1, arg2)
		local registerVal3 = DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_5)
		if registerVal3 then
			registerVal3 = DamageFeedbackFlagSet(arg1, Enum.DamageFeedbackFlags.DAMAGE_FEEDBACK_FLAG_DEAD)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_672F_
	local registerVal14 = {}
	registerVal14.stateName = "Stage5"
	local function __FUNC_687E_(arg0, arg1, arg2)
		return DamageFeedbackInStage(arg1, Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_5)
	end

	registerVal14.condition = __FUNC_687E_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_693F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "damageFeedbackState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "damageFeedbackState", true, __FUNC_693F_)
	local function __FUNC_6A65_(arg0)
		arg0.perkFeedback:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6A65_)
	if __FUNC_21C_ then
		__FUNC_21C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MPDamageFeedback.new = __FUNC_551_
