-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_hotrod_hand = registerVal1
function CoD.CallingCards_loot_hotrod_hand.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_loot_hotrod_hand)
	registerVal2.id = "CallingCards_loot_hotrod_hand"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 192.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_devil_hand"))
	registerVal2:addElement(registerVal3)
	registerVal2.devilHand = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_538_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6D3_(arg0, arg1)
			local function __FUNC_8B5_(arg0, arg1)
				local function __FUNC_A94_(arg0, arg1)
					local function __FUNC_C7E_(arg0, arg1)
						local function __FUNC_E5C_(arg0, arg1)
							local function __FUNC_1041_(arg0, arg1)
								local function __FUNC_1220_(arg0, arg1)
									local function __FUNC_140A_(arg0, arg1)
										local function __FUNC_15E8_(arg0, arg1)
											local function __FUNC_17CD_(arg0, arg1)
												local function __FUNC_19AC_(arg0, arg1)
													local function __FUNC_1B96_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 0.000000, 48.000000)
														arg0:setTopBottom(true, false, 0.000000, 108.000000)
														arg0:setZRot(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_1B96_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, 3.000000, 51.000000)
													arg0:setTopBottom(true, false, 2.000000, 110.000000)
													arg0:setZRot(-4.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B96_)
												end

												if arg1.interrupted then
													__FUNC_19AC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 0.000000, 48.000000)
												arg0:setTopBottom(true, false, 0.000000, 108.000000)
												arg0:setZRot(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19AC_)
											end

											if arg1.interrupted then
												__FUNC_17CD_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, -22.000000, 26.000000)
											arg0:setTopBottom(true, false, -3.000000, 105.000000)
											arg0:setZRot(26.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17CD_)
										end

										if arg1.interrupted then
											__FUNC_15E8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 0.000000, 48.000000)
										arg0:setTopBottom(true, false, 0.000000, 108.000000)
										arg0:setZRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E8_)
									end

									if arg1.interrupted then
										__FUNC_140A_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 3.000000, 51.000000)
									arg0:setTopBottom(true, false, 2.000000, 110.000000)
									arg0:setZRot(-4.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140A_)
								end

								if arg1.interrupted then
									__FUNC_1220_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 0.000000, 48.000000)
								arg0:setTopBottom(true, false, 0.000000, 108.000000)
								arg0:setZRot(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1220_)
							end

							if arg1.interrupted then
								__FUNC_1041_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -22.000000, 26.000000)
							arg0:setTopBottom(true, false, -3.000000, 105.000000)
							arg0:setZRot(26.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1041_)
						end

						if arg1.interrupted then
							__FUNC_E5C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 0.000000, 48.000000)
						arg0:setTopBottom(true, false, 0.000000, 108.000000)
						arg0:setZRot(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5C_)
					end

					if arg1.interrupted then
						__FUNC_C7E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 3.000000, 51.000000)
					arg0:setTopBottom(true, false, 2.000000, 110.000000)
					arg0:setZRot(-4.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7E_)
				end

				if arg1.interrupted then
					__FUNC_A94_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 530.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 0.000000, 48.000000)
				arg0:setTopBottom(true, false, 0.000000, 108.000000)
				arg0:setZRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A94_)
			end

			if arg1.interrupted then
				__FUNC_8B5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 560.000000, true, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -22.000000, 26.000000)
			arg0:setTopBottom(true, false, -3.000000, 105.000000)
			arg0:setZRot(26.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B5_)
		end

		registerVal3:completeAnimation()
		registerVal2.devilHand:setLeftRight(true, false, 0.000000, 48.000000)
		registerVal2.devilHand:setTopBottom(true, false, 0.000000, 108.000000)
		registerVal2.devilHand:setZRot(0.000000)
		__FUNC_6D3_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_538_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

