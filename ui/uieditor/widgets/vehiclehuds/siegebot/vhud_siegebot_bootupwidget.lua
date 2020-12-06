-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_bootupWidget = registerVal1
function CoD.vhud_siegebot_bootupWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_bootupWidget)
	registerVal2.id = "vhud_siegebot_bootupWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 640.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 360.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 438.000000, 640.000000)
	registerVal3:setTopBottom(true, false, 186.080000, 357.000000)
	registerVal3:setRGB(0.800000, 0.990000, 1.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_1a"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Top1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 342.380000, 640.000000)
	registerVal4:setTopBottom(true, false, 138.020000, 304.000000)
	registerVal4:setRGB(0.800000, 0.990000, 1.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_3a"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Top2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 208.000000, 640.000000)
	registerVal5:setTopBottom(true, false, 43.540000, 271.540000)
	registerVal5:setRGB(0.800000, 0.990000, 1.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_2a"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Top3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 146.820000, 640.000000)
	registerVal6:setTopBottom(true, false, -7.730000, 226.730000)
	registerVal6:setRGB(0.800000, 0.990000, 1.000000)
	registerVal6:setAlpha(0.200000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_4a"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Top4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -11.000000, 640.000000)
	registerVal7:setTopBottom(true, false, -10.000000, 201.580000)
	registerVal7:setRGB(0.800000, 0.990000, 1.000000)
	registerVal7:setAlpha(0.100000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_5a"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Top5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 445.550000, 583.000000)
	registerVal8:setTopBottom(true, false, 276.000000, 360.000000)
	registerVal8:setRGB(0.800000, 0.990000, 1.000000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_1b"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Bottom1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 342.380000, 463.690000)
	registerVal9:setTopBottom(true, false, 239.000000, 360.000000)
	registerVal9:setRGB(0.800000, 0.990000, 1.000000)
	registerVal9:setAlpha(0.400000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_3b"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Bottom2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 218.360000, 373.500000)
	registerVal10:setTopBottom(true, false, 194.000000, 360.000000)
	registerVal10:setRGB(0.800000, 0.990000, 1.000000)
	registerVal10:setAlpha(0.300000)
	registerVal10:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_2b"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Bottom3 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 138.830000, 252.000000)
	registerVal11:setTopBottom(true, false, 166.000000, 360.000000)
	registerVal11:setRGB(0.800000, 0.990000, 1.000000)
	registerVal11:setAlpha(0.200000)
	registerVal11:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_4b"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Bottom4 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -9.850000, 159.840000)
	registerVal12:setTopBottom(true, false, 109.500000, 360.000000)
	registerVal12:setRGB(0.800000, 0.990000, 1.000000)
	registerVal12:setAlpha(0.100000)
	registerVal12:setImage(RegisterImage("uie_t7_mp_hud_siegebot_vhud_element_5b"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Bottom5 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 21.190000, 177.190000)
	registerVal13:setTopBottom(false, false, 41.010000, 53.010000)
	registerVal13:setRGB(0.800000, 0.990000, 1.000000)
	registerVal13:setAlpha(0.500000)
	registerVal13:setZRot(20.000000)
	registerVal13:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Line = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 90.000000, 246.000000)
	registerVal14:setTopBottom(false, false, -65.500000, -53.500000)
	registerVal14:setRGB(0.800000, 0.990000, 1.000000)
	registerVal14:setAlpha(0.500000)
	registerVal14:setZRot(20.000000)
	registerVal14:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Line2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -124.580000, 31.420000)
	registerVal15:setTopBottom(false, false, -51.980000, -39.980000)
	registerVal15:setRGB(0.800000, 0.990000, 1.000000)
	registerVal15:setAlpha(0.500000)
	registerVal15:setZRot(20.000000)
	registerVal15:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Line3 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -125.580000, -35.580000)
	registerVal16:setTopBottom(false, false, 103.000000, 115.000000)
	registerVal16:setRGB(0.800000, 0.990000, 1.000000)
	registerVal16:setAlpha(0.500000)
	registerVal16:setZRot(90.000000)
	registerVal16:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Line4 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -279.580000, -225.170000)
	registerVal17:setTopBottom(false, false, -96.210000, -84.210000)
	registerVal17:setRGB(0.800000, 0.990000, 1.000000)
	registerVal17:setAlpha(0.500000)
	registerVal17:setZRot(20.000000)
	registerVal17:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Line30 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, 121.330000, 143.690000)
	registerVal18:setTopBottom(false, false, 145.000000, 157.000000)
	registerVal18:setAlpha(0.500000)
	registerVal18:setZRot(90.000000)
	registerVal18:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image0 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, 214.000000, 278.000000)
	registerVal19:setTopBottom(false, false, 60.000000, 72.000000)
	registerVal19:setRGB(0.800000, 0.990000, 1.000000)
	registerVal19:setAlpha(0.500000)
	registerVal19:setZRot(20.000000)
	registerVal19:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Image1 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, 199.000000, 263.000000)
	registerVal20:setTopBottom(false, false, -152.210000, -140.210000)
	registerVal20:setRGB(0.800000, 0.990000, 1.000000)
	registerVal20:setAlpha(0.500000)
	registerVal20:setZRot(20.000000)
	registerVal20:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image2 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -143.000000, -47.580000)
	registerVal21:setTopBottom(false, false, -152.210000, -140.210000)
	registerVal21:setRGB(0.800000, 0.990000, 1.000000)
	registerVal21:setAlpha(0.500000)
	registerVal21:setZRot(20.000000)
	registerVal21:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image3 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -181.170000, -158.810000)
	registerVal22:setTopBottom(false, false, 40.730000, 52.730000)
	registerVal22:setAlpha(0.500000)
	registerVal22:setZRot(90.000000)
	registerVal22:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_linesidelarge"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image4 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_194B_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_2012_(arg0, arg1)
			local function __FUNC_218B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_218B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218B_)
		end

		registerVal3:completeAnimation()
		registerVal2.Top1:setAlpha(0.000000)
		__FUNC_2012_(registerVal3, {})
		local function __FUNC_233D_(arg0, arg1)
			local function __FUNC_2494_(arg0, arg1)
				local function __FUNC_260F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_260F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_260F_)
			end

			if arg1.interrupted then
				__FUNC_2494_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2494_)
		end

		registerVal4:completeAnimation()
		registerVal2.Top2:setAlpha(0.000000)
		__FUNC_233D_(registerVal4, {})
		local function __FUNC_27C1_(arg0, arg1)
			local function __FUNC_2918_(arg0, arg1)
				local function __FUNC_2A93_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2A93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A93_)
			end

			if arg1.interrupted then
				__FUNC_2918_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2918_)
		end

		registerVal5:completeAnimation()
		registerVal2.Top3:setAlpha(0.000000)
		__FUNC_27C1_(registerVal5, {})
		local function __FUNC_2C45_(arg0, arg1)
			local function __FUNC_2D9C_(arg0, arg1)
				local function __FUNC_2F17_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2F17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.050000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F17_)
			end

			if arg1.interrupted then
				__FUNC_2D9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9C_)
		end

		registerVal6:completeAnimation()
		registerVal2.Top4:setAlpha(0.000000)
		__FUNC_2C45_(registerVal6, {})
		local function __FUNC_30C9_(arg0, arg1)
			local function __FUNC_3220_(arg0, arg1)
				local function __FUNC_339B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_339B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_339B_)
			end

			if arg1.interrupted then
				__FUNC_3220_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3220_)
		end

		registerVal7:completeAnimation()
		registerVal2.Top5:setAlpha(0.000000)
		__FUNC_30C9_(registerVal7, {})
		local function __FUNC_354D_(arg0, arg1)
			local function __FUNC_36C7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_36C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36C7_)
		end

		registerVal8:completeAnimation()
		registerVal2.Bottom1:setAlpha(0.000000)
		__FUNC_354D_(registerVal8, {})
		local function __FUNC_3879_(arg0, arg1)
			local function __FUNC_39D0_(arg0, arg1)
				local function __FUNC_3B4B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3B4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B4B_)
			end

			if arg1.interrupted then
				__FUNC_39D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39D0_)
		end

		registerVal9:completeAnimation()
		registerVal2.Bottom2:setAlpha(0.000000)
		__FUNC_3879_(registerVal9, {})
		local function __FUNC_3CFD_(arg0, arg1)
			local function __FUNC_3E54_(arg0, arg1)
				local function __FUNC_3FCF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3FCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FCF_)
			end

			if arg1.interrupted then
				__FUNC_3E54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E54_)
		end

		registerVal10:completeAnimation()
		registerVal2.Bottom3:setAlpha(0.000000)
		__FUNC_3CFD_(registerVal10, {})
		local function __FUNC_4181_(arg0, arg1)
			local function __FUNC_42D8_(arg0, arg1)
				local function __FUNC_4453_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4453_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4453_)
			end

			if arg1.interrupted then
				__FUNC_42D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42D8_)
		end

		registerVal11:completeAnimation()
		registerVal2.Bottom4:setAlpha(0.000000)
		__FUNC_4181_(registerVal11, {})
		local function __FUNC_4605_(arg0, arg1)
			local function __FUNC_475C_(arg0, arg1)
				local function __FUNC_48D7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_48D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48D7_)
			end

			if arg1.interrupted then
				__FUNC_475C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_475C_)
		end

		registerVal12:completeAnimation()
		registerVal2.Bottom5:setAlpha(0.000000)
		__FUNC_4605_(registerVal12, {})
		local function __FUNC_4A89_(arg0, arg1)
			local function __FUNC_4BE0_(arg0, arg1)
				local function __FUNC_4D5B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4D5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D5B_)
			end

			if arg1.interrupted then
				__FUNC_4BE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BE0_)
		end

		registerVal13:completeAnimation()
		registerVal2.Line:setAlpha(0.000000)
		__FUNC_4A89_(registerVal13, {})
		local function __FUNC_4F0D_(arg0, arg1)
			local function __FUNC_5064_(arg0, arg1)
				local function __FUNC_51DF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_51DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51DF_)
			end

			if arg1.interrupted then
				__FUNC_5064_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5064_)
		end

		registerVal14:completeAnimation()
		registerVal2.Line2:setAlpha(0.000000)
		__FUNC_4F0D_(registerVal14, {})
		local function __FUNC_5391_(arg0, arg1)
			local function __FUNC_54E8_(arg0, arg1)
				local function __FUNC_5663_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5663_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5663_)
			end

			if arg1.interrupted then
				__FUNC_54E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54E8_)
		end

		registerVal15:completeAnimation()
		registerVal2.Line3:setAlpha(0.000000)
		__FUNC_5391_(registerVal15, {})
		local function __FUNC_5815_(arg0, arg1)
			local function __FUNC_596C_(arg0, arg1)
				local function __FUNC_5AE7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5AE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AE7_)
			end

			if arg1.interrupted then
				__FUNC_596C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_596C_)
		end

		registerVal16:completeAnimation()
		registerVal2.Line4:setAlpha(0.000000)
		__FUNC_5815_(registerVal16, {})
		local function __FUNC_5C99_(arg0, arg1)
			local function __FUNC_5DF0_(arg0, arg1)
				local function __FUNC_5F6B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5F6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F6B_)
			end

			if arg1.interrupted then
				__FUNC_5DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DF0_)
		end

		registerVal17:completeAnimation()
		registerVal2.Line30:setAlpha(0.000000)
		__FUNC_5C99_(registerVal17, {})
		local function __FUNC_611D_(arg0, arg1)
			local function __FUNC_6274_(arg0, arg1)
				local function __FUNC_63EF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_63EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63EF_)
			end

			if arg1.interrupted then
				__FUNC_6274_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6274_)
		end

		registerVal18:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_611D_(registerVal18, {})
		local function __FUNC_65A1_(arg0, arg1)
			local function __FUNC_66F8_(arg0, arg1)
				local function __FUNC_6873_(arg0, arg1)
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

				if arg1.interrupted then
					__FUNC_6873_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6873_)
			end

			if arg1.interrupted then
				__FUNC_66F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66F8_)
		end

		registerVal19:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_65A1_(registerVal19, {})
		local function __FUNC_6A25_(arg0, arg1)
			local function __FUNC_6B7C_(arg0, arg1)
				local function __FUNC_6CF7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6CF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CF7_)
			end

			if arg1.interrupted then
				__FUNC_6B7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B7C_)
		end

		registerVal20:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_6A25_(registerVal20, {})
		local function __FUNC_6EA9_(arg0, arg1)
			local function __FUNC_7000_(arg0, arg1)
				local function __FUNC_717B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_717B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_717B_)
			end

			if arg1.interrupted then
				__FUNC_7000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7000_)
		end

		registerVal21:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_6EA9_(registerVal21, {})
		local function __FUNC_732D_(arg0, arg1)
			local function __FUNC_7484_(arg0, arg1)
				local function __FUNC_75FF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_75FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75FF_)
			end

			if arg1.interrupted then
				__FUNC_7484_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7484_)
		end

		registerVal22:completeAnimation()
		registerVal2.Image4:setAlpha(0.000000)
		__FUNC_732D_(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_194B_
	registerVal23.DefaultState = registerVal24
	registerVal2.clipsPerState = registerVal23
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

