-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.arena.ArenaStarAnimation3")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoopingstarAnimationTest = registerVal1
function CoD.LoopingstarAnimationTest.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LoopingstarAnimationTest)
	registerVal2.id = "LoopingstarAnimationTest"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 270.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = CoD.ArenaStarAnimation3.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -95.000000, 95.000000)
	registerVal3:setTopBottom(false, false, -324.000000, -134.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ArenaStarAnimation1 = registerVal3
	local registerVal4 = CoD.ArenaStarAnimation3.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -95.000000, 95.000000)
	registerVal4:setTopBottom(false, false, -514.000000, -324.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ArenaStarAnimation2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -111.000000, 111.000000)
	registerVal5:setTopBottom(false, false, -25.500000, 54.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.420000)
	registerVal2:addElement(registerVal5)
	registerVal2.backing = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -58.500000, 58.500000)
	registerVal6:setTopBottom(false, false, -109.880000, 3.130000)
	registerVal6:setRGB(0.620000, 0.490000, 0.050000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(221.000000)
	registerVal6:setScale(1.890000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.highlight00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -111.000000, 111.000000)
	registerVal7:setTopBottom(false, false, -125.000000, -48.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_effect_glitches_menu9lblur"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Glicth = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -95.000000, 65.490000)
	registerVal8:setTopBottom(false, false, -77.500000, 77.500000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setZRot(108.000000)
	registerVal8:setScale(2.660000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.highlight = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B9B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.Glicth:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_B9B_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_C96_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_10D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 95.000000)
			arg0:setTopBottom(false, false, 135.000000, 325.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArenaStarAnimation1:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation1:setTopBottom(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation1:setAlpha(1.000000)
		__FUNC_10D1_(registerVal3, {})
		local function __FUNC_12F5_(arg0, arg1)
			local function __FUNC_146F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -95.000000, 95.000000)
				arg0:setTopBottom(false, false, -95.000000, 95.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_146F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146F_)
		end

		registerVal4:completeAnimation()
		registerVal2.ArenaStarAnimation2:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation2:setTopBottom(false, false, -325.000000, -135.000000)
		registerVal2.ArenaStarAnimation2:setAlpha(0.000000)
		__FUNC_12F5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setAlpha(0.420000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1687_(arg0, arg1)
			local function __FUNC_1814_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -111.000000, 111.000000)
				arg0:setTopBottom(false, false, -202.000000, -125.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 125.000000, 202.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1814_)
		end

		registerVal7:completeAnimation()
		registerVal2.Glicth:setLeftRight(false, false, -111.000000, 111.000000)
		registerVal2.Glicth:setTopBottom(false, false, -125.000000, -48.000000)
		registerVal2.Glicth:setAlpha(0.000000)
		__FUNC_1687_(registerVal7, {})
		local function __FUNC_1A39_(arg0, arg1)
			local function __FUNC_1BB3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -95.000000, 65.490000)
				arg0:setTopBottom(false, false, -77.500000, 77.500000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1BB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB3_)
		end

		registerVal8:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -95.000000, 65.490000)
		registerVal2.highlight:setTopBottom(false, false, -77.500000, 77.500000)
		registerVal2.highlight:setAlpha(0.200000)
		__FUNC_1A39_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_C96_
	registerVal9.StarLoop = registerVal10
	registerVal10 = {}
	local function __FUNC_1DD5_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_21E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 95.000000)
			arg0:setTopBottom(false, false, 135.000000, 325.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArenaStarAnimation1:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation1:setTopBottom(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation1:setAlpha(1.000000)
		__FUNC_21E1_(registerVal3, {})
		local function __FUNC_2405_(arg0, arg1)
			local function __FUNC_257F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 419.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -95.000000, 95.000000)
				arg0:setTopBottom(false, false, -95.000000, 95.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_257F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.130000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_257F_)
		end

		registerVal4:completeAnimation()
		registerVal2.ArenaStarAnimation2:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation2:setTopBottom(false, false, -325.000000, -135.000000)
		registerVal2.ArenaStarAnimation2:setAlpha(0.000000)
		__FUNC_2405_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -111.000000, 111.000000)
		registerVal2.backing:setTopBottom(false, false, -25.500000, 54.000000)
		registerVal2.backing:setAlpha(0.420000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2797_(arg0, arg1)
			local function __FUNC_2924_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -111.000000, 111.000000)
				arg0:setTopBottom(false, false, -202.000000, -125.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2924_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 125.000000, 202.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2924_)
		end

		registerVal7:completeAnimation()
		registerVal2.Glicth:setLeftRight(false, false, -111.000000, 111.000000)
		registerVal2.Glicth:setTopBottom(false, false, -125.000000, -48.000000)
		registerVal2.Glicth:setAlpha(0.000000)
		__FUNC_2797_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.highlight:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1DD5_
	local function __FUNC_2B49_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2ED8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -111.000000, 111.000000)
			arg0:setTopBottom(false, false, -25.500000, 54.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -111.000000, 111.000000)
		registerVal2.backing:setTopBottom(false, false, -25.500000, 54.000000)
		registerVal2.backing:setAlpha(0.420000)
		__FUNC_2ED8_(registerVal5, {})
		local function __FUNC_30FD_(arg0, arg1)
			local function __FUNC_32C4_(arg0, arg1)
				local function __FUNC_34D1_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -68.500000, 68.500000)
					arg0:setTopBottom(false, false, -51.910000, 80.410000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(443.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_34D1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, true, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -68.500000, 68.500000)
				arg0:setTopBottom(false, false, -51.910000, 80.410000)
				arg0:setAlpha(0.480000)
				arg0:setZRot(443.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D1_)
			end

			if arg1.interrupted then
				__FUNC_32C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -60.150000, 60.150000)
			arg0:setTopBottom(false, false, -43.850000, 72.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32C4_)
		end

		registerVal6:completeAnimation()
		registerVal2.highlight00:setLeftRight(false, false, -58.500000, 58.500000)
		registerVal2.highlight00:setTopBottom(false, false, -42.250000, 70.750000)
		registerVal2.highlight00:setAlpha(1.000000)
		registerVal2.highlight00:setZRot(278.000000)
		__FUNC_30FD_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glicth:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_3717_(arg0, arg1)
			local function __FUNC_388F_(arg0, arg1)
				local function __FUNC_3A07_(arg0, arg1)
					local function __FUNC_3B7F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -95.000000, 65.490000)
						arg0:setTopBottom(false, false, -77.500000, 77.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3B7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 209.000000, true, true, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B7F_)
				end

				if arg1.interrupted then
					__FUNC_3A07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A07_)
			end

			if arg1.interrupted then
				__FUNC_388F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_388F_)
		end

		registerVal8:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -95.000000, 65.490000)
		registerVal2.highlight:setTopBottom(false, false, -77.500000, 77.500000)
		registerVal2.highlight:setAlpha(0.200000)
		__FUNC_3717_(registerVal8, {})
	end

	registerVal10.FadeOut = __FUNC_2B49_
	registerVal9.StopAnimation = registerVal10
	registerVal10 = {}
	local function __FUNC_3DA1_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_41D5_(arg0, arg1)
			local function __FUNC_4387_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -95.000000, 95.000000)
				arg0:setTopBottom(false, false, -95.000000, 95.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4387_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -325.000000, -135.000000)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4387_)
		end

		registerVal3:completeAnimation()
		registerVal2.ArenaStarAnimation1:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation1:setTopBottom(false, false, -324.000000, -134.000000)
		registerVal2.ArenaStarAnimation1:setAlpha(0.000000)
		__FUNC_41D5_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArenaStarAnimation2:setLeftRight(false, false, -95.000000, 95.000000)
		registerVal2.ArenaStarAnimation2:setTopBottom(false, false, -514.000000, -324.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setAlpha(0.420000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_459F_(arg0, arg1)
			local function __FUNC_472C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -111.000000, 111.000000)
				arg0:setTopBottom(false, false, -202.000000, -125.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_472C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, 125.000000, 202.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_472C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Glicth:setLeftRight(false, false, -111.000000, 111.000000)
		registerVal2.Glicth:setTopBottom(false, false, -125.000000, -48.000000)
		registerVal2.Glicth:setAlpha(0.000000)
		__FUNC_459F_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.highlight:setAlpha(0.200000)
		registerVal2.highlight:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3DA1_
	registerVal9.StarIntro = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_4951_(arg0)
		arg0.ArenaStarAnimation1:close()
		arg0.ArenaStarAnimation2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4951_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

