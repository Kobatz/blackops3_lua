-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_CuteAnimals = registerVal1
function CoD.CallingCards_loot_CuteAnimals.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_CuteAnimals)
	registerVal2.id = "CallingCards_loot_CuteAnimals"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_cutie_animals_master_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_cutie_animals_master_rays"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_cutie_animals_master_chicks"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_cutie_animals_master_chicks2"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image20 = registerVal6
	local registerVal7 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsGoldFrame = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_92F_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_BA4_(arg0, arg1)
			local function __FUNC_D2F_(arg0, arg1)
				local function __FUNC_EB7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 1.000000, 1.000000)
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
				arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.610000, 0.790000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB7_)
			end

			if arg1.interrupted then
				__FUNC_D2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.000000, 1.000000, 0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_BA4_(registerVal3, {})
		local function __FUNC_106F_(arg0, arg1)
			local function __FUNC_11E7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E7_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image2:setScale(1.000000)
		__FUNC_106F_(registerVal5, {})
		local function __FUNC_1399_(arg0, arg1)
			local function __FUNC_1513_(arg0, arg1)
				local function __FUNC_16AE_(arg0, arg1)
					local function __FUNC_184A_(arg0, arg1)
						local function __FUNC_19C3_(arg0, arg1)
							local function __FUNC_1B5E_(arg0, arg1)
								local function __FUNC_1CD7_(arg0, arg1)
									local function __FUNC_1E4F_(arg0, arg1)
										local function __FUNC_1FEA_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											arg0:setScale(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_1FEA_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:setScale(1.010000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FEA_)
									end

									if arg1.interrupted then
										__FUNC_1E4F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4F_)
								end

								if arg1.interrupted then
									__FUNC_1CD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
								arg0:setScale(1.030000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD7_)
							end

							if arg1.interrupted then
								__FUNC_1B5E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.070000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5E_)
						end

						if arg1.interrupted then
							__FUNC_19C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C3_)
					end

					if arg1.interrupted then
						__FUNC_184A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.090000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184A_)
				end

				if arg1.interrupted then
					__FUNC_16AE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AE_)
			end

			if arg1.interrupted then
				__FUNC_1513_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.080000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1513_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image20:setAlpha(0.000000)
		registerVal2.Image20:setScale(1.000000)
		__FUNC_1399_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CallingCardsGoldFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_92F_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_21C0_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_21C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

