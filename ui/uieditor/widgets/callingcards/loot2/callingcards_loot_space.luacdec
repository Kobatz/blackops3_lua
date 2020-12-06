-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_Space = registerVal1
function CoD.CallingCards_loot_Space.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_Space)
	registerVal2.id = "CallingCards_loot_Space"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_bg1"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.BG1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -21.000000, 219.000000)
	registerVal5:setTopBottom(true, false, 49.000000, 145.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_comet1"))
	registerVal2:addElement(registerVal5)
	registerVal2.comet1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 65.000000, 185.000000)
	registerVal6:setTopBottom(true, false, 30.000000, 90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_comet2"))
	registerVal2:addElement(registerVal6)
	registerVal2.comet2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 147.000000, 267.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_comet3"))
	registerVal2:addElement(registerVal7)
	registerVal2.comet3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 271.000000, 314.000000)
	registerVal8:setTopBottom(true, false, 41.000000, 84.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_rock1"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 328.000000, 376.000000)
	registerVal9:setTopBottom(true, false, 72.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_rock2"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 388.000000, 417.000000)
	registerVal10:setTopBottom(true, false, 48.120000, 77.120000)
	registerVal10:setAlpha(0.810000)
	registerVal10:setZRot(-175.000000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_rock2"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image10 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 207.000000, 236.000000)
	registerVal11:setTopBottom(true, false, 77.120000, 106.120000)
	registerVal11:setAlpha(0.700000)
	registerVal11:setZRot(-17.000000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_space_airbrush_master_rock2"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image2 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_BBE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BG2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_127E_(arg0, arg1)
			local function __FUNC_13F7_(arg0, arg1)
				local function __FUNC_156F_(arg0, arg1)
					local function __FUNC_16E7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_16E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.130000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E7_)
				end

				if arg1.interrupted then
					__FUNC_156F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156F_)
			end

			if arg1.interrupted then
				__FUNC_13F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F7_)
		end

		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(1.000000)
		__FUNC_127E_(registerVal4, {})
		local function __FUNC_1899_(arg0, arg1)
			local function __FUNC_1A83_(arg0, arg1)
				local function __FUNC_1C8E_(arg0, arg1)
					local function __FUNC_1E54_(arg0, arg1)
						local function __FUNC_203F_(arg0, arg1)
							local function __FUNC_2194_(arg0, arg1)
								local function __FUNC_2332_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 2069.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -21.000000, 219.000000)
									arg0:setTopBottom(true, false, 49.000000, 145.000000)
									arg0:setAlpha(1.000000)
									arg0:setScale(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2332_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:setScale(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2332_)
							end

							if arg1.interrupted then
								__FUNC_2194_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2194_)
						end

						if arg1.interrupted then
							__FUNC_203F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 117.000000, 357.000000)
						arg0:setTopBottom(true, false, 35.970000, 131.970000)
						arg0:setScale(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203F_)
					end

					if arg1.interrupted then
						__FUNC_1E54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -188.600000, 51.400000)
					arg0:setTopBottom(true, false, 67.770000, 163.770000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E54_)
				end

				if arg1.interrupted then
					__FUNC_1C8E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -159.160000, 80.840000)
				arg0:setTopBottom(true, false, 76.320000, 172.320000)
				arg0:setAlpha(0.000000)
				arg0:setScale(0.820000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C8E_)
			end

			if arg1.interrupted then
				__FUNC_1A83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -144.440000, 95.560000)
			arg0:setTopBottom(true, false, 80.600000, 176.600000)
			arg0:setScale(0.830000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A83_)
		end

		registerVal5:completeAnimation()
		registerVal2.comet1:setLeftRight(true, false, -21.000000, 219.000000)
		registerVal2.comet1:setTopBottom(true, false, 49.000000, 145.000000)
		registerVal2.comet1:setAlpha(1.000000)
		registerVal2.comet1:setScale(1.000000)
		__FUNC_1899_(registerVal5, {})
		local function __FUNC_2573_(arg0, arg1)
			local function __FUNC_2738_(arg0, arg1)
				local function __FUNC_2923_(arg0, arg1)
					local function __FUNC_2AE8_(arg0, arg1)
						local function __FUNC_2CD3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 1839.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 19.000000, 139.000000)
							arg0:setTopBottom(true, false, 22.000000, 82.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2CD3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 159.000000, 279.000000)
						arg0:setTopBottom(true, false, 49.000000, 109.000000)
						arg0:setAlpha(0.120000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CD3_)
					end

					if arg1.interrupted then
						__FUNC_2AE8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 103.170000, 223.170000)
					arg0:setTopBottom(true, false, 36.220000, 96.220000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AE8_)
				end

				if arg1.interrupted then
					__FUNC_2923_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -38.720000, 81.280000)
				arg0:setTopBottom(true, false, 3.730000, 63.730000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2923_)
			end

			if arg1.interrupted then
				__FUNC_2738_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1259.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -55.000000, 65.000000)
			arg0:setTopBottom(true, false, 0.000000, 60.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2738_)
		end

		registerVal6:completeAnimation()
		registerVal2.comet2:setLeftRight(true, false, 19.000000, 139.000000)
		registerVal2.comet2:setTopBottom(true, false, 22.000000, 82.000000)
		registerVal2.comet2:setAlpha(1.000000)
		__FUNC_2573_(registerVal6, {})
		local function __FUNC_2EF5_(arg0, arg1)
			local function __FUNC_3102_(arg0, arg1)
				local function __FUNC_32EB_(arg0, arg1)
					local function __FUNC_34F6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1680.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 185.000000, 305.000000)
						arg0:setTopBottom(true, false, 11.000000, 71.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_34F6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 39.210000, 159.210000)
					arg0:setTopBottom(true, false, -36.310000, 23.690000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.980000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F6_)
				end

				if arg1.interrupted then
					__FUNC_32EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 34.000000, 154.000000)
				arg0:setTopBottom(true, false, -38.000000, 22.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32EB_)
			end

			if arg1.interrupted then
				__FUNC_3102_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1259.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 101.550000, 221.550000)
			arg0:setTopBottom(true, false, -16.080000, 43.920000)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.780000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3102_)
		end

		registerVal7:completeAnimation()
		registerVal2.comet3:setLeftRight(true, false, 185.000000, 305.000000)
		registerVal2.comet3:setTopBottom(true, false, 11.000000, 71.000000)
		registerVal2.comet3:setAlpha(0.000000)
		registerVal2.comet3:setScale(0.500000)
		__FUNC_2EF5_(registerVal7, {})
		local function __FUNC_373C_(arg0, arg1)
			local function __FUNC_3904_(arg0, arg1)
				local function __FUNC_3ACC_(arg0, arg1)
					local function __FUNC_3C94_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 271.000000, 314.000000)
						arg0:setTopBottom(true, false, 41.000000, 84.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3C94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 264.300000, 307.300000)
					arg0:setTopBottom(true, false, 39.740000, 82.740000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C94_)
				end

				if arg1.interrupted then
					__FUNC_3ACC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1220.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 274.300000, 317.300000)
				arg0:setTopBottom(true, false, 41.900000, 84.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ACC_)
			end

			if arg1.interrupted then
				__FUNC_3904_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 264.300000, 307.300000)
			arg0:setTopBottom(true, false, 40.500000, 83.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3904_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 271.000000, 314.000000)
		registerVal2.Image0:setTopBottom(true, false, 41.000000, 84.000000)
		__FUNC_373C_(registerVal8, {})
		local function __FUNC_3E96_(arg0, arg1)
			local function __FUNC_405C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1609.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 329.000000, 377.000000)
				arg0:setTopBottom(true, false, 82.000000, 130.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_405C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2410.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 360.000000, 408.000000)
			arg0:setTopBottom(true, false, 81.630000, 129.630000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405C_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image1:setLeftRight(true, false, 329.000000, 377.000000)
		registerVal2.Image1:setTopBottom(true, false, 82.000000, 130.000000)
		__FUNC_3E96_(registerVal9, {})
		local function __FUNC_425E_(arg0, arg1)
			local function __FUNC_4424_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2519.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 393.000000, 422.000000)
				arg0:setTopBottom(true, false, 48.000000, 77.000000)
				arg0:setAlpha(0.810000)
				arg0:setZRot(-175.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4424_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 381.790000, 410.790000)
			arg0:setTopBottom(true, false, 48.020000, 77.020000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4424_)
		end

		registerVal10:completeAnimation()
		registerVal2.Image10:setLeftRight(true, false, 393.000000, 422.000000)
		registerVal2.Image10:setTopBottom(true, false, 48.000000, 77.000000)
		registerVal2.Image10:setAlpha(0.810000)
		registerVal2.Image10:setZRot(-175.000000)
		__FUNC_425E_(registerVal10, {})
		local function __FUNC_466B_(arg0, arg1)
			local function __FUNC_4830_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2730.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 207.000000, 236.000000)
				arg0:setTopBottom(true, false, 77.120000, 106.120000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4830_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1289.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 225.500000, 254.500000)
			arg0:setTopBottom(true, false, 77.020000, 106.020000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4830_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image2:setLeftRight(true, false, 207.000000, 236.000000)
		registerVal2.Image2:setTopBottom(true, false, 77.120000, 106.120000)
		__FUNC_466B_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_BBE_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

