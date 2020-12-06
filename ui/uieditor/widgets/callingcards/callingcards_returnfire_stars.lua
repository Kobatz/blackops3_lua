-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_ReturnFire_Stars = registerVal1
function CoD.CallingCards_ReturnFire_Stars.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_ReturnFire_Stars)
	registerVal2.id = "CallingCards_ReturnFire_Stars"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 76.980000, 99.590000)
	registerVal3:setTopBottom(true, false, 46.000000, 67.310000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 55.980000, 78.590000)
	registerVal4:setTopBottom(true, false, 6.000000, 27.310000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 62.490000, 76.980000)
	registerVal5:setTopBottom(true, false, 76.710000, 90.360000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 29.690000, 37.670000)
	registerVal6:setTopBottom(true, false, 79.780000, 87.300000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 37.670000, 52.160000)
	registerVal7:setTopBottom(true, false, 0.000000, 13.660000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 7.980000)
	registerVal8:setTopBottom(true, false, 6.140000, 13.660000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image7 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 55.790000, 70.290000)
	registerVal9:setTopBottom(true, false, 53.660000, 67.310000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_returnfire_star"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image8 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_8C9_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_E8A_(arg0, arg1)
			local function __FUNC_1073_(arg0, arg1)
				local function __FUNC_1238_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 76.980000, 99.590000)
					arg0:setTopBottom(true, false, 46.000000, 67.310000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1238_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 489.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 76.980000, 99.590000)
				arg0:setTopBottom(true, false, 46.000000, 67.310000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1238_)
			end

			if arg1.interrupted then
				__FUNC_1073_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 3.990000, 26.600000)
			arg0:setTopBottom(true, false, 64.000000, 85.310000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1073_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image1:setLeftRight(true, false, 76.980000, 99.590000)
		registerVal2.Image1:setTopBottom(true, false, 46.000000, 67.310000)
		registerVal2.Image1:setAlpha(1.000000)
		__FUNC_E8A_(registerVal3, {})
		local function __FUNC_145D_(arg0, arg1)
			local function __FUNC_15D7_(arg0, arg1)
				local function __FUNC_17BF_(arg0, arg1)
					local function __FUNC_1984_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 55.980000, 78.590000)
						arg0:setTopBottom(true, false, 6.000000, 27.310000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1984_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 55.980000, 78.590000)
					arg0:setTopBottom(true, false, 6.000000, 27.310000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1984_)
				end

				if arg1.interrupted then
					__FUNC_17BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -26.020000, -3.410000)
				arg0:setTopBottom(true, false, -13.000000, 8.310000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BF_)
			end

			if arg1.interrupted then
				__FUNC_15D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image2:setLeftRight(true, false, 55.980000, 78.590000)
		registerVal2.Image2:setTopBottom(true, false, 6.000000, 27.310000)
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_145D_(registerVal4, {})
		local function __FUNC_1BA9_(arg0, arg1)
			local function __FUNC_1D8E_(arg0, arg1)
				local function __FUNC_1F54_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 62.490000, 76.980000)
					arg0:setTopBottom(true, false, 76.710000, 90.360000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1F54_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 62.490000, 76.980000)
				arg0:setTopBottom(true, false, 76.710000, 90.360000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F54_)
			end

			if arg1.interrupted then
				__FUNC_1D8E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -14.490000, 0.000000)
			arg0:setTopBottom(true, false, 90.000000, 103.660000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D8E_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image3:setLeftRight(true, false, 62.490000, 76.980000)
		registerVal2.Image3:setTopBottom(true, false, 76.710000, 90.360000)
		registerVal2.Image3:setAlpha(1.000000)
		__FUNC_1BA9_(registerVal5, {})
		local function __FUNC_2179_(arg0, arg1)
			local function __FUNC_22D0_(arg0, arg1)
				local function __FUNC_2428_(arg0, arg1)
					local function __FUNC_25A3_(arg0, arg1)
						local function __FUNC_278B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 29.690000, 37.670000)
							arg0:setTopBottom(true, false, 79.780000, 87.300000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_278B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -31.310000, -23.330000)
						arg0:setTopBottom(true, false, 90.360000, 97.880000)
						arg0:setAlpha(0.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_278B_)
					end

					if arg1.interrupted then
						__FUNC_25A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A3_)
				end

				if arg1.interrupted then
					__FUNC_2428_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2428_)
			end

			if arg1.interrupted then
				__FUNC_22D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D0_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image4:setLeftRight(true, false, 29.690000, 37.670000)
		registerVal2.Image4:setTopBottom(true, false, 79.780000, 87.300000)
		registerVal2.Image4:setAlpha(0.000000)
		__FUNC_2179_(registerVal6, {})
		local function __FUNC_29AD_(arg0, arg1)
			local function __FUNC_2B04_(arg0, arg1)
				local function __FUNC_2C7F_(arg0, arg1)
					local function __FUNC_2E62_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 37.670000, 52.160000)
						arg0:setTopBottom(true, false, 0.000000, 13.660000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2E62_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -38.330000, -23.840000)
					arg0:setTopBottom(true, false, -13.660000, 0.000000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E62_)
				end

				if arg1.interrupted then
					__FUNC_2C7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7F_)
			end

			if arg1.interrupted then
				__FUNC_2B04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B04_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image5:setLeftRight(true, false, 37.670000, 52.160000)
		registerVal2.Image5:setTopBottom(true, false, 0.000000, 13.660000)
		registerVal2.Image5:setAlpha(0.000000)
		__FUNC_29AD_(registerVal7, {})
		local function __FUNC_3080_(arg0, arg1)
			local function __FUNC_31D8_(arg0, arg1)
				local function __FUNC_3353_(arg0, arg1)
					local function __FUNC_353B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 7.980000)
						arg0:setTopBottom(true, false, 6.140000, 13.660000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_353B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -60.000000, -52.020000)
					arg0:setTopBottom(true, false, 6.000000, 13.520000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_353B_)
				end

				if arg1.interrupted then
					__FUNC_3353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3353_)
			end

			if arg1.interrupted then
				__FUNC_31D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31D8_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image7:setLeftRight(true, false, 0.000000, 7.980000)
		registerVal2.Image7:setTopBottom(true, false, 6.140000, 13.660000)
		registerVal2.Image7:setAlpha(0.000000)
		__FUNC_3080_(registerVal8, {})
		local function __FUNC_3758_(arg0, arg1)
			local function __FUNC_38B0_(arg0, arg1)
				local function __FUNC_3A2B_(arg0, arg1)
					local function __FUNC_3C13_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 55.790000, 70.290000)
						arg0:setTopBottom(true, false, 53.660000, 67.310000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3C13_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -23.210000, -8.710000)
					arg0:setTopBottom(true, false, 58.500000, 72.150000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C13_)
				end

				if arg1.interrupted then
					__FUNC_3A2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A2B_)
			end

			if arg1.interrupted then
				__FUNC_38B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B0_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image8:setLeftRight(true, false, 55.790000, 70.290000)
		registerVal2.Image8:setTopBottom(true, false, 53.660000, 67.310000)
		registerVal2.Image8:setAlpha(0.000000)
		__FUNC_3758_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_8C9_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

