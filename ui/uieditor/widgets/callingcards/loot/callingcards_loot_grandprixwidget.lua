-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_GrandPrixWidget = registerVal1
function CoD.CallingCards_Loot_GrandPrixWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_GrandPrixWidget)
	registerVal2.id = "CallingCards_Loot_GrandPrixWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_grandprix_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 100.670000, 432.000000)
	registerVal4:setTopBottom(true, false, -195.000000, 524.630000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 384.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_grandprix_cars2"))
	registerVal2:addElement(registerVal5)
	registerVal2.Med = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 384.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_grandprix_cars3"))
	registerVal2:addElement(registerVal6)
	registerVal2.Sm = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_grandprix_cars1"))
	registerVal2:addElement(registerVal7)
	registerVal2.Lrg = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_899_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_B6B_(arg0, arg1)
			local function __FUNC_CE3_(arg0, arg1)
				local function __FUNC_E5B_(arg0, arg1)
					local function __FUNC_FD3_(arg0, arg1)
						local function __FUNC_114B_(arg0, arg1)
							local function __FUNC_12C3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_12C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.810000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C3_)
						end

						if arg1.interrupted then
							__FUNC_114B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.670000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114B_)
					end

					if arg1.interrupted then
						__FUNC_FD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD3_)
				end

				if arg1.interrupted then
					__FUNC_E5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5B_)
			end

			if arg1.interrupted then
				__FUNC_CE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE3_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_B6B_(registerVal4, {})
		local function __FUNC_1475_(arg0, arg1)
			local function __FUNC_1604_(arg0, arg1)
				local function __FUNC_1794_(arg0, arg1)
					local function __FUNC_195C_(arg0, arg1)
						local function __FUNC_1B1F_(arg0, arg1)
							local function __FUNC_1CE4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 384.000000, 480.000000)
								arg0:setTopBottom(true, false, 0.000000, 96.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1CE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 398.000000, 494.000000)
							arg0:setTopBottom(true, false, -4.000000, 92.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE4_)
						end

						if arg1.interrupted then
							__FUNC_1B1F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 384.000000, 480.000000)
						arg0:setTopBottom(true, false, 0.000000, 96.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1F_)
					end

					if arg1.interrupted then
						__FUNC_195C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 396.000000, 492.000000)
					arg0:setTopBottom(true, false, 3.000000, 99.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_195C_)
				end

				if arg1.interrupted then
					__FUNC_1794_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 0.000000, 96.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1794_)
			end

			if arg1.interrupted then
				__FUNC_1604_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -7.000000, 89.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1604_)
		end

		registerVal5:completeAnimation()
		registerVal2.Med:setLeftRight(true, false, 384.000000, 480.000000)
		registerVal2.Med:setTopBottom(true, false, 0.000000, 96.000000)
		__FUNC_1475_(registerVal5, {})
		local function __FUNC_1EE6_(arg0, arg1)
			local function __FUNC_2074_(arg0, arg1)
				local function __FUNC_2204_(arg0, arg1)
					local function __FUNC_2394_(arg0, arg1)
						local function __FUNC_2524_(arg0, arg1)
							local function __FUNC_26B4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 384.000000, 480.000000)
								arg0:setTopBottom(true, false, 0.000000, 96.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_26B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 360.000000, 456.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B4_)
						end

						if arg1.interrupted then
							__FUNC_2524_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 370.000000, 466.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2524_)
					end

					if arg1.interrupted then
						__FUNC_2394_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 359.000000, 455.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2394_)
				end

				if arg1.interrupted then
					__FUNC_2204_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 377.000000, 473.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2204_)
			end

			if arg1.interrupted then
				__FUNC_2074_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 368.000000, 464.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2074_)
		end

		registerVal6:completeAnimation()
		registerVal2.Sm:setLeftRight(true, false, 384.000000, 480.000000)
		registerVal2.Sm:setTopBottom(true, false, 0.000000, 96.000000)
		__FUNC_1EE6_(registerVal6, {})
		local function __FUNC_28B6_(arg0, arg1)
			local function __FUNC_2A44_(arg0, arg1)
				local function __FUNC_2BD4_(arg0, arg1)
					local function __FUNC_2D64_(arg0, arg1)
						local function __FUNC_2EF4_(arg0, arg1)
							local function __FUNC_3084_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 0.000000, 480.000000)
								arg0:setTopBottom(true, false, 0.000000, 120.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3084_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -8.000000, 472.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3084_)
						end

						if arg1.interrupted then
							__FUNC_2EF4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 510.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF4_)
					end

					if arg1.interrupted then
						__FUNC_2D64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.000000, 473.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D64_)
				end

				if arg1.interrupted then
					__FUNC_2BD4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BD4_)
			end

			if arg1.interrupted then
				__FUNC_2A44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -14.000000, 466.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A44_)
		end

		registerVal7:completeAnimation()
		registerVal2.Lrg:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.Lrg:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_28B6_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_899_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

