-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_NotificationFlashes = registerVal1
function CoD.FR_NotificationFlashes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_NotificationFlashes)
	registerVal2.id = "FR_NotificationFlashes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 675.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 107.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_notification_checkpoint"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationCheckpoint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_freerun_hud_notification_restart"))
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationRestart = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 222.000000, 496.000000)
	registerVal5:setTopBottom(true, false, 33.540000, 81.540000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("CHECKPOINT"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal5)
	registerVal2.CheckpointText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 256.490000, 530.490000)
	registerVal6:setTopBottom(true, false, 33.540000, 81.540000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("RESTART"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal2:addElement(registerVal6)
	registerVal2.RestartText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B18_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B18_
	local function __FUNC_B7A_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_D54_(arg0, arg1)
			local function __FUNC_ECF_(arg0, arg1)
				local function __FUNC_10B7_(arg0, arg1)
					local function __FUNC_126D_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_126D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126D_)
				end

				if arg1.interrupted then
					__FUNC_10B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 53.000000, -60.330000)
				arg0:setTopBottom(true, true, 15.830000, -15.830000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B7_)
			end

			if arg1.interrupted then
				__FUNC_ECF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECF_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setLeftRight(true, true, 159.000000, -181.000000)
		registerVal2.NotificationCheckpoint:setTopBottom(true, true, 47.500000, -47.500000)
		registerVal2.NotificationCheckpoint:setAlpha(0.000000)
		__FUNC_D54_(registerVal3, {})
		local function __FUNC_1482_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(0.000000)
		__FUNC_1482_(registerVal5, {})
	end

	registerVal8.Intro = __FUNC_B7A_
	local function __FUNC_1635_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1801_(arg0, arg1)
			local function __FUNC_197B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 159.000000, -181.000000)
				arg0:setTopBottom(true, true, 47.500000, -47.500000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_197B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197B_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.NotificationCheckpoint:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.NotificationCheckpoint:setAlpha(1.000000)
		__FUNC_1801_(registerVal3, {})
		local function __FUNC_1B9D_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(1.000000)
		__FUNC_1B9D_(registerVal5, {})
	end

	registerVal8.Outro = __FUNC_1635_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1D51_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_1D51_
	local function __FUNC_1DB2_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_205C_(arg0, arg1)
			local function __FUNC_21D7_(arg0, arg1)
				local function __FUNC_23BF_(arg0, arg1)
					local function __FUNC_2575_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2575_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2575_)
				end

				if arg1.interrupted then
					__FUNC_23BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 53.000000, -60.330000)
				arg0:setTopBottom(true, true, 15.830000, -15.830000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BF_)
			end

			if arg1.interrupted then
				__FUNC_21D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D7_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setLeftRight(true, true, 159.000000, -181.000000)
		registerVal2.NotificationCheckpoint:setTopBottom(true, true, 47.500000, -47.500000)
		registerVal2.NotificationCheckpoint:setAlpha(0.000000)
		__FUNC_205C_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NotificationRestart:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_278A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(0.000000)
		__FUNC_278A_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RestartText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Intro = __FUNC_1DB2_
	local function __FUNC_293D_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_2B09_(arg0, arg1)
			local function __FUNC_2C83_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 159.000000, -181.000000)
				arg0:setTopBottom(true, true, 47.500000, -47.500000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C83_)
		end

		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.NotificationCheckpoint:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.NotificationCheckpoint:setAlpha(1.000000)
		__FUNC_2B09_(registerVal3, {})
		local function __FUNC_2EA5_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(1.000000)
		__FUNC_2EA5_(registerVal5, {})
	end

	registerVal8.Outro = __FUNC_293D_
	registerVal7.Checkpoint = registerVal8
	registerVal8 = {}
	local function __FUNC_3059_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_3059_
	local function __FUNC_30BA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3364_(arg0, arg1)
			local function __FUNC_34DF_(arg0, arg1)
				local function __FUNC_36C7_(arg0, arg1)
					local function __FUNC_387D_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_387D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_387D_)
				end

				if arg1.interrupted then
					__FUNC_36C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 53.000000, -48.170000)
				arg0:setTopBottom(true, true, 15.830000, -15.830000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C7_)
			end

			if arg1.interrupted then
				__FUNC_34DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34DF_)
		end

		registerVal4:completeAnimation()
		registerVal2.NotificationRestart:setLeftRight(true, true, 159.000000, -144.510000)
		registerVal2.NotificationRestart:setTopBottom(true, true, 47.500000, -47.500000)
		registerVal2.NotificationRestart:setAlpha(0.000000)
		__FUNC_3364_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_3A92_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RestartText:setAlpha(0.000000)
		__FUNC_3A92_(registerVal6, {})
	end

	registerVal8.Intro = __FUNC_30BA_
	local function __FUNC_3C45_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3EE1_(arg0, arg1)
			local function __FUNC_405B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 256.490000, -144.510000)
				arg0:setTopBottom(true, true, 33.540000, -25.460000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_405B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405B_)
		end

		registerVal4:completeAnimation()
		registerVal2.NotificationRestart:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.NotificationRestart:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.NotificationRestart:setAlpha(1.000000)
		__FUNC_3EE1_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_427D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.RestartText:setAlpha(1.000000)
		__FUNC_427D_(registerVal6, {})
	end

	registerVal8.Outro = __FUNC_3C45_
	registerVal7.Retry = registerVal8
	registerVal8 = {}
	local function __FUNC_4431_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationCheckpoint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NotificationRestart:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CheckpointText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RestartText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_4431_
	registerVal7.Invisible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Checkpoint"
	local function __FUNC_4654_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_4654_
	local registerVal11 = {}
	registerVal11.stateName = "Retry"
	local function __FUNC_4688_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_4688_
	local registerVal12 = {}
	registerVal12.stateName = "Invisible"
	local function __FUNC_46BC_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_46BC_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal9)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

