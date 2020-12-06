-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CenterConsoleIcon = registerVal1
function CoD.CenterConsoleIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterConsoleIcon)
	registerVal2.id = "CenterConsoleIcon"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 15.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_death_headshot"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5C4_
	local function __FUNC_626_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_706_(arg0, arg1)
			local function __FUNC_87F_(arg0, arg1)
				local function __FUNC_9D4_(arg0, arg1)
					local function __FUNC_B4F_(arg0, arg1)
						local function __FUNC_CA4_(arg0, arg1)
							local function __FUNC_E1F_(arg0, arg1)
								local function __FUNC_F74_(arg0, arg1)
									local function __FUNC_10EF_(arg0, arg1)
										local function __FUNC_1267_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_1267_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.750000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1267_)
									end

									if arg1.interrupted then
										__FUNC_10EF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.740000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EF_)
								end

								if arg1.interrupted then
									__FUNC_F74_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F74_)
							end

							if arg1.interrupted then
								__FUNC_E1F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1F_)
						end

						if arg1.interrupted then
							__FUNC_CA4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA4_)
					end

					if arg1.interrupted then
						__FUNC_B4F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4F_)
				end

				if arg1.interrupted then
					__FUNC_9D4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D4_)
			end

			if arg1.interrupted then
				__FUNC_87F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		__FUNC_706_(registerVal3, {})
	end

	registerVal5.FadeIn = __FUNC_626_
	local function __FUNC_1419_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_14F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		__FUNC_14F5_(registerVal3, {})
	end

	registerVal5.FadeOut = __FUNC_1419_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

