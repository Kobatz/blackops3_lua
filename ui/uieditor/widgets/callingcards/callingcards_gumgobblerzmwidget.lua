-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_GumGobblerZMWidget = registerVal1
function CoD.CallingCards_GumGobblerZMWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_GumGobblerZMWidget)
	registerVal2.id = "CallingCards_GumGobblerZMWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.BGInvert = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setAlpha(0.570000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_wind"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.410000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.wind = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 51.000000, 115.000000)
	registerVal6:setTopBottom(true, false, 32.000000, 96.000000)
	registerVal6:setZRot(17.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_skull1"))
	registerVal2:addElement(registerVal6)
	registerVal2.skull1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 104.000000, 168.000000)
	registerVal7:setTopBottom(true, false, -12.000000, 52.000000)
	registerVal7:setZRot(-34.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_skull3"))
	registerVal2:addElement(registerVal7)
	registerVal2.skull2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 128.000000, 192.000000)
	registerVal8:setTopBottom(true, false, 37.000000, 101.000000)
	registerVal8:setZRot(-99.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_gungobblerzm_skull2"))
	registerVal2:addElement(registerVal8)
	registerVal2.skull3 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A44_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_D4D_(arg0, arg1)
			local function __FUNC_EA4_(arg0, arg1)
				local function __FUNC_101F_(arg0, arg1)
					local function __FUNC_1197_(arg0, arg1)
						local function __FUNC_12EC_(arg0, arg1)
							local function __FUNC_1467_(arg0, arg1)
								local function __FUNC_15DF_(arg0, arg1)
									local function __FUNC_1757_(arg0, arg1)
										local function __FUNC_18CF_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_18CF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CF_)
									end

									if arg1.interrupted then
										__FUNC_1757_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1757_)
								end

								if arg1.interrupted then
									__FUNC_15DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DF_)
							end

							if arg1.interrupted then
								__FUNC_1467_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1467_)
						end

						if arg1.interrupted then
							__FUNC_12EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1139.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EC_)
					end

					if arg1.interrupted then
						__FUNC_1197_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1197_)
				end

				if arg1.interrupted then
					__FUNC_101F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101F_)
			end

			if arg1.interrupted then
				__FUNC_EA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA4_)
		end

		registerVal4:completeAnimation()
		registerVal2.BGInvert:setAlpha(0.000000)
		__FUNC_D4D_(registerVal4, {})
		local function __FUNC_1A81_(arg0, arg1)
			local function __FUNC_1C48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1390.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 64.000000, 128.000000)
				arg0:setTopBottom(true, false, 20.000000, 84.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 20.000000, 84.000000)
			arg0:setTopBottom(true, false, 56.000000, 120.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C48_)
		end

		registerVal6:completeAnimation()
		registerVal2.skull1:setLeftRight(true, false, 64.000000, 128.000000)
		registerVal2.skull1:setTopBottom(true, false, 20.000000, 84.000000)
		__FUNC_1A81_(registerVal6, {})
		local function __FUNC_1E4A_(arg0, arg1)
			local function __FUNC_2010_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1390.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 104.000000, 168.000000)
				arg0:setTopBottom(true, false, -12.000000, 52.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2010_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 108.000000, 172.000000)
			arg0:setTopBottom(true, false, 6.000000, 70.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2010_)
		end

		registerVal7:completeAnimation()
		registerVal2.skull2:setLeftRight(true, false, 104.000000, 168.000000)
		registerVal2.skull2:setTopBottom(true, false, -12.000000, 52.000000)
		__FUNC_1E4A_(registerVal7, {})
		local function __FUNC_2212_(arg0, arg1)
			local function __FUNC_23D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1390.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 133.000000, 197.000000)
				arg0:setTopBottom(true, false, 31.000000, 95.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_23D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 157.000000, 221.000000)
			arg0:setTopBottom(true, false, 49.000000, 113.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D8_)
		end

		registerVal8:completeAnimation()
		registerVal2.skull3:setLeftRight(true, false, 133.000000, 197.000000)
		registerVal2.skull3:setTopBottom(true, false, 31.000000, 95.000000)
		__FUNC_2212_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_A44_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

