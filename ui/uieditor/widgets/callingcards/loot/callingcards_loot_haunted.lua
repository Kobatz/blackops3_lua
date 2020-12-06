-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_Haunted = registerVal1
function CoD.CallingCards_Loot_Haunted.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_Haunted)
	registerVal2.id = "CallingCards_Loot_Haunted"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_haunted_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 326.000000, 427.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 82.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_haunted_eyesglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 286.000000, 480.000000)
	registerVal5:setTopBottom(true, false, -29.000000, 55.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_haunted_fire1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.fire1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 286.000000, 480.000000)
	registerVal6:setTopBottom(true, false, -29.000000, 55.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_haunted_fire2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.fire2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 286.000000, 480.000000)
	registerVal7:setTopBottom(true, false, -29.000000, 55.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_haunted_fire3"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.fire3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 286.000000, 480.000000)
	registerVal8:setTopBottom(true, false, -29.000000, 55.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_haunted_fire4"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.fire4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 286.000000, 480.000000)
	registerVal9:setTopBottom(true, false, -29.000000, 55.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_haunted_fire5"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.fire5 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 170.670000, 502.000000)
	registerVal10:setTopBottom(true, false, -170.000000, 549.630000)
	registerVal10:setRGB(0.270000, 0.800000, 1.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(90.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Glow = registerVal10
	local registerVal11 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.CallingCardsGoldFrame = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_D6F_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1183_(arg0, arg1)
			local function __FUNC_12FB_(arg0, arg1)
				local function __FUNC_1473_(arg0, arg1)
					local function __FUNC_15EB_(arg0, arg1)
						local function __FUNC_1763_(arg0, arg1)
							local function __FUNC_18DB_(arg0, arg1)
								local function __FUNC_1A53_(arg0, arg1)
									local function __FUNC_1BCB_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1BCB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BCB_)
								end

								if arg1.interrupted then
									__FUNC_1A53_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A53_)
							end

							if arg1.interrupted then
								__FUNC_18DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 930.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18DB_)
						end

						if arg1.interrupted then
							__FUNC_1763_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1763_)
					end

					if arg1.interrupted then
						__FUNC_15EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15EB_)
				end

				if arg1.interrupted then
					__FUNC_1473_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1473_)
			end

			if arg1.interrupted then
				__FUNC_12FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FB_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_1183_(registerVal4, {})
		local function __FUNC_1D7D_(arg0, arg1)
			local function __FUNC_1ED4_(arg0, arg1)
				local function __FUNC_204F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 760.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.400000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_204F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_204F_)
			end

			if arg1.interrupted then
				__FUNC_1ED4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED4_)
		end

		registerVal5:completeAnimation()
		registerVal2.fire1:setAlpha(0.000000)
		registerVal2.fire1:setScale(1.400000)
		__FUNC_1D7D_(registerVal5, {})
		local function __FUNC_2224_(arg0, arg1)
			local function __FUNC_237C_(arg0, arg1)
				local function __FUNC_24F7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_24F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F7_)
			end

			if arg1.interrupted then
				__FUNC_237C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1179.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237C_)
		end

		registerVal6:completeAnimation()
		registerVal2.fire2:setAlpha(0.000000)
		registerVal2.fire2:setScale(1.100000)
		__FUNC_2224_(registerVal6, {})
		local function __FUNC_26CC_(arg0, arg1)
			local function __FUNC_2847_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2847_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2847_)
		end

		registerVal7:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_26CC_)
		local function __FUNC_29F9_(arg0, arg1)
			local function __FUNC_2B73_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B73_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B73_)
		end

		registerVal8:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_29F9_)
		local function __FUNC_2D25_(arg0, arg1)
			local function __FUNC_2E9F_(arg0, arg1)
				local function __FUNC_2FF4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2FF4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FF4_)
			end

			if arg1.interrupted then
				__FUNC_2E9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9F_)
		end

		registerVal9:completeAnimation()
		registerVal2.fire5:setAlpha(0.000000)
		__FUNC_2D25_(registerVal9, {})
		local function __FUNC_31A9_(arg0, arg1)
			local function __FUNC_3323_(arg0, arg1)
				local function __FUNC_349B_(arg0, arg1)
					local function __FUNC_35F0_(arg0, arg1)
						local function __FUNC_3748_(arg0, arg1)
							local function __FUNC_38C3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 630.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_38C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.660000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C3_)
						end

						if arg1.interrupted then
							__FUNC_3748_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3748_)
					end

					if arg1.interrupted then
						__FUNC_35F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35F0_)
				end

				if arg1.interrupted then
					__FUNC_349B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349B_)
			end

			if arg1.interrupted then
				__FUNC_3323_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3323_)
		end

		registerVal10:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_31A9_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_D6F_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_3A75_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3A75_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

