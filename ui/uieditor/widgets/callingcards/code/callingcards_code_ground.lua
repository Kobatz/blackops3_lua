-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_ground_sun")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_ground = registerVal1
function CoD.CallingCards_code_ground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_code_ground)
	registerVal2.id = "CallingCards_code_ground"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_ground_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.CallingCards_code_ground_sun.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 240.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardscodegroundsun = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.000000, 501.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 124.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_ground_tank"))
	registerVal2:addElement(registerVal5)
	registerVal2.TANK = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 298.000000, 334.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 42.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_ground_heli2"))
	registerVal2:addElement(registerVal6)
	registerVal2.helileft = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 415.000000, 475.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_ground_heli1"))
	registerVal2:addElement(registerVal7)
	registerVal2.heliright = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 381.400000, 355.000000)
	registerVal8:setTopBottom(true, false, 32.000000, 56.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_ground_heli1"))
	registerVal2:addElement(registerVal8)
	registerVal2.helileft2 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 377.480000, 395.600000)
	registerVal9:setTopBottom(true, false, 22.000000, 37.100000)
	registerVal9:setAlpha(0.530000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_ground_heli1"))
	registerVal2:addElement(registerVal9)
	registerVal2.heliright0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 387.000000, 459.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_ground_duderight"))
	registerVal2:addElement(registerVal10)
	registerVal2.duderight = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 298.000000, 370.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_ground_dudeleft"))
	registerVal2:addElement(registerVal11)
	registerVal2.dudeleft = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 157.000000, 480.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcards_ground_ashes"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal12:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, -0.160000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.amber = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_D67_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCardscodegroundsun:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1296_(arg0, arg1)
			local function __FUNC_145C_(arg0, arg1)
				local function __FUNC_1624_(arg0, arg1)
					local function __FUNC_17B4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -11.000000, 501.000000)
						arg0:setTopBottom(true, false, -4.000000, 124.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_17B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -4.000000, 124.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B4_)
				end

				if arg1.interrupted then
					__FUNC_1624_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1210.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -5.000000, 507.000000)
				arg0:setTopBottom(true, false, -5.410000, 122.590000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1624_)
			end

			if arg1.interrupted then
				__FUNC_145C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -12.000000, 500.000000)
			arg0:setTopBottom(true, false, -6.000000, 122.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145C_)
		end

		registerVal5:completeAnimation()
		registerVal2.TANK:setLeftRight(true, false, -11.000000, 501.000000)
		registerVal2.TANK:setTopBottom(true, false, -4.000000, 124.000000)
		__FUNC_1296_(registerVal5, {})
		local function __FUNC_19B6_(arg0, arg1)
			local function __FUNC_1B9F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2519.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 240.000000, 299.000000)
				arg0:setTopBottom(true, false, -38.700000, 20.300000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 307.420000, 347.040000)
			arg0:setTopBottom(true, false, 11.620000, 51.230000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B9F_)
		end

		registerVal6:completeAnimation()
		registerVal2.helileft:setLeftRight(true, false, 320.000000, 356.000000)
		registerVal2.helileft:setTopBottom(true, false, 21.000000, 57.000000)
		registerVal2.helileft:setAlpha(0.000000)
		registerVal2.helileft:setScale(1.000000)
		__FUNC_19B6_(registerVal6, {})
		local function __FUNC_1DDF_(arg0, arg1)
			local function __FUNC_1FC7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1740.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 461.000000, 546.200000)
				arg0:setTopBottom(true, false, -47.000000, 24.000000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1FC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1250.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 415.610000, 468.450000)
			arg0:setTopBottom(true, false, 4.790000, 48.830000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC7_)
		end

		registerVal7:completeAnimation()
		registerVal2.heliright:setLeftRight(true, false, 383.000000, 412.600000)
		registerVal2.heliright:setTopBottom(true, false, 42.000000, 66.660000)
		registerVal2.heliright:setAlpha(0.000000)
		registerVal2.heliright:setScale(1.000000)
		__FUNC_1DDF_(registerVal7, {})
		local function __FUNC_2207_(arg0, arg1)
			local function __FUNC_23CC_(arg0, arg1)
				local function __FUNC_2594_(arg0, arg1)
					local function __FUNC_277F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1690.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 346.400000, 306.580000)
						arg0:setTopBottom(true, false, -29.600000, 6.600000)
						arg0:setAlpha(0.750000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_277F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 364.120000, 339.170000)
					arg0:setTopBottom(true, false, 10.090000, 32.760000)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277F_)
				end

				if arg1.interrupted then
					__FUNC_2594_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 372.090000, 353.830000)
				arg0:setTopBottom(true, false, 27.940000, 44.530000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2594_)
			end

			if arg1.interrupted then
				__FUNC_23CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 375.440000, 360.000000)
			arg0:setTopBottom(true, false, 35.450000, 49.490000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CC_)
		end

		registerVal8:completeAnimation()
		registerVal2.helileft2:setLeftRight(true, false, 375.400000, 355.000000)
		registerVal2.helileft2:setTopBottom(true, false, 32.000000, 50.550000)
		registerVal2.helileft2:setAlpha(0.000000)
		__FUNC_2207_(registerVal8, {})
		local function __FUNC_29A1_(arg0, arg1)
			local function __FUNC_2B68_(arg0, arg1)
				local function __FUNC_2D53_(arg0, arg1)
					local function __FUNC_2F18_(arg0, arg1)
						local function __FUNC_3103_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 849.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 401.480000, 419.600000)
							arg0:setTopBottom(true, false, 5.200000, 20.300000)
							arg0:setAlpha(0.700000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3103_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 389.120000, 407.230000)
						arg0:setTopBottom(true, false, 13.860000, 28.950000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3103_)
					end

					if arg1.interrupted then
						__FUNC_2F18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 580.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 377.480000, 395.600000)
					arg0:setTopBottom(true, false, 22.000000, 37.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F18_)
				end

				if arg1.interrupted then
					__FUNC_2D53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 422.430000, 440.550000)
				arg0:setTopBottom(true, false, -10.960000, 4.140000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D53_)
			end

			if arg1.interrupted then
				__FUNC_2B68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 423.980000, 442.100000)
			arg0:setTopBottom(true, false, -12.100000, 3.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B68_)
		end

		registerVal9:completeAnimation()
		registerVal2.heliright0:setLeftRight(true, false, 401.480000, 419.600000)
		registerVal2.heliright0:setTopBottom(true, false, 5.200000, 20.300000)
		registerVal2.heliright0:setAlpha(0.700000)
		__FUNC_29A1_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_D67_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_3325_(arg0)
		arg0.CallingCardscodegroundsun:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3325_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

