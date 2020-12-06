-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.ChargeShot.ChargeShot_SmallCenter")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargeShot_CenterReticle")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_top_Arrow")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_Moving_Arrow")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_Reticle_Side")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_Active_Center")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_ActiveLock")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_4corner_line")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_4corner_Bracket")
require("ui.uieditor.widgets.Reticles.ChargeShot.ChargerShot_Brackets")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargeShot_reticle_ui3d = registerVal1
function CoD.ChargeShot_reticle_ui3d.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargeShot_reticle_ui3d)
	registerVal2.id = "ChargeShot_reticle_ui3d"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChargeShot_SmallCenter.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -72.740000, 18.540000)
	registerVal3:setTopBottom(false, false, -43.330000, 47.960000)
	registerVal3:setRGB(0.290000, 0.690000, 0.950000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChargeShotSmallCenter0 = registerVal3
	local registerVal4 = CoD.ChargeShot_SmallCenter.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -21.520000, 69.770000)
	registerVal4:setTopBottom(false, false, -43.330000, 47.960000)
	registerVal4:setRGB(0.290000, 0.690000, 0.950000)
	registerVal4:setYRot(180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChargeShotSmallCenter1 = registerVal4
	local registerVal5 = CoD.ChargeShot_CenterReticle.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -45.000000, 40.660000)
	registerVal5:setTopBottom(false, false, -40.330000, 45.330000)
	registerVal5:setRGB(0.290000, 0.690000, 0.950000)
	registerVal2:addElement(registerVal5)
	registerVal2.ChargeShotCenterReticle = registerVal5
	local registerVal6 = CoD.ChargerShot_top_Arrow.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -23.910000, 22.270000)
	registerVal6:setTopBottom(false, false, -269.600000, -157.040000)
	registerVal2:addElement(registerVal6)
	registerVal2.ChargerShottopArrow1 = registerVal6
	local registerVal7 = CoD.ChargerShot_top_Arrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -23.670000, 21.330000)
	registerVal7:setTopBottom(false, false, 162.830000, 272.520000)
	registerVal7:setXRot(180.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ChargerShottopArrow2 = registerVal7
	local registerVal8 = CoD.ChargerShot_Moving_Arrow.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -189.790000, -130.790000)
	registerVal8:setTopBottom(false, false, -26.040000, 32.960000)
	registerVal2:addElement(registerVal8)
	registerVal2.ChargerShotMovingArrow1 = registerVal8
	local registerVal9 = CoD.ChargerShot_Moving_Arrow.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 129.500000, 185.540000)
	registerVal9:setTopBottom(false, false, -25.520000, 30.520000)
	registerVal9:setYRot(180.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ChargerShotMovingArrow2 = registerVal9
	local registerVal10 = CoD.ChargerShot_Reticle_Side.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -308.000000, -224.000000)
	registerVal10:setTopBottom(false, false, -40.330000, 43.670000)
	registerVal2:addElement(registerVal10)
	registerVal2.ChargerShotReticleSide1 = registerVal10
	local registerVal11 = CoD.ChargerShot_Reticle_Side.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, 223.710000, 307.710000)
	registerVal11:setTopBottom(false, false, -40.330000, 43.670000)
	registerVal11:setYRot(180.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.ChargerShotReticleSide2 = registerVal11
	local registerVal12 = CoD.ChargerShot_Active_Center.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -38.630000, 34.370000)
	registerVal12:setTopBottom(false, false, -35.170000, 37.830000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.ChargerShotActiveCenter = registerVal12
	local registerVal13 = CoD.ChargerShot_ActiveLock.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 24.200000, 169.270000)
	registerVal13:setTopBottom(false, false, -169.710000, -21.380000)
	registerVal13:setRGB(0.290000, 0.690000, 0.950000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setYRot(180.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.ChargerShotActiveLock0 = registerVal13
	local registerVal14 = CoD.ChargerShot_ActiveLock.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -172.790000, -23.670000)
	registerVal14:setTopBottom(false, false, -170.440000, -21.320000)
	registerVal14:setRGB(0.290000, 0.690000, 0.950000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.ChargerShotActiveLock3 = registerVal14
	local registerVal15 = CoD.ChargerShot_ActiveLock.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -172.790000, -23.670000)
	registerVal15:setTopBottom(false, false, 24.220000, 173.330000)
	registerVal15:setRGB(0.290000, 0.690000, 0.950000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setXRot(180.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.ChargerShotActiveLock10 = registerVal15
	local registerVal16 = CoD.ChargerShot_ActiveLock.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, 22.270000, 169.270000)
	registerVal16:setTopBottom(false, false, 22.980000, 169.980000)
	registerVal16:setRGB(0.290000, 0.690000, 0.950000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setXRot(180.000000)
	registerVal16:setYRot(180.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.ChargerShotActiveLock20 = registerVal16
	local registerVal17 = CoD.ChargerShot_4corner_line.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -151.290000, 142.500000)
	registerVal17:setTopBottom(false, false, -146.880000, 150.500000)
	registerVal2:addElement(registerVal17)
	registerVal2.ChargerShot4cornerline = registerVal17
	local registerVal18 = CoD.ChargerShot_4corner_Bracket.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -209.230000, 204.540000)
	registerVal18:setTopBottom(false, false, -197.940000, 202.710000)
	registerVal18:setRGB(0.060000, 0.510000, 0.800000)
	registerVal18:setScale(1.100000)
	registerVal2:addElement(registerVal18)
	registerVal2.ChargerShot4cornerBracket0 = registerVal18
	local registerVal19 = CoD.ChargerShot_Brackets.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, -105.670000, 101.710000)
	registerVal19:setTopBottom(false, false, -288.320000, 293.520000)
	registerVal19:setAlpha(0.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.ChargerShotBrackets = registerVal19
	local registerVal20 = CoD.ChargeShot_CenterReticle.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -45.000000, 40.660000)
	registerVal20:setTopBottom(false, false, -40.330000, 45.330000)
	registerVal20:setRGB(1.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.ChargeShotCenterReticle0 = registerVal20
	local registerVal21 = CoD.ChargeShot_SmallCenter.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -21.520000, 69.770000)
	registerVal21:setTopBottom(false, false, -43.330000, 47.960000)
	registerVal21:setRGB(1.000000, 0.000000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setYRot(180.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.ChargeShotSmallCenter10 = registerVal21
	local registerVal22 = CoD.ChargeShot_SmallCenter.new(arg0, arg1)
	registerVal22:setLeftRight(false, false, -72.740000, 18.540000)
	registerVal22:setTopBottom(false, false, -43.330000, 47.960000)
	registerVal22:setRGB(1.000000, 0.000000, 0.000000)
	registerVal22:setAlpha(0.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.ChargeShotSmallCenter00 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_1881_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal24.DefaultClip = __FUNC_1881_
	local function __FUNC_18E2_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_251A_(arg0, arg1)
			local function __FUNC_2670_(arg0, arg1)
				local function __FUNC_27C8_(arg0, arg1)
					local function __FUNC_2976_(arg0, arg1)
						local function __FUNC_2AF5_(arg0, arg1)
							local function __FUNC_2C7A_(arg0, arg1)
								local function __FUNC_2DF9_(arg0, arg1)
									local function __FUNC_2FA6_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setRGB(0.290000, 0.690000, 0.950000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_2FA6_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(0.290000, 0.690000, 0.950000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FA6_)
								end

								if arg1.interrupted then
									__FUNC_2DF9_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DF9_)
							end

							if arg1.interrupted then
								__FUNC_2C7A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(1.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7A_)
						end

						if arg1.interrupted then
							__FUNC_2AF5_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF5_)
					end

					if arg1.interrupted then
						__FUNC_2976_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.650000, 0.850000, 0.970000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2976_)
				end

				if arg1.interrupted then
					__FUNC_27C8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C8_)
			end

			if arg1.interrupted then
				__FUNC_2670_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2670_)
		end

		registerVal3:completeAnimation()
		registerVal2.ChargeShotSmallCenter0:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.ChargeShotSmallCenter0:setAlpha(1.000000)
		__FUNC_251A_(registerVal3, {})
		local function __FUNC_318C_(arg0, arg1)
			local function __FUNC_32E4_(arg0, arg1)
				local function __FUNC_3488_(arg0, arg1)
					local function __FUNC_360E_(arg0, arg1)
						local function __FUNC_378D_(arg0, arg1)
							local function __FUNC_393A_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(0.290000, 0.690000, 0.950000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_393A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.290000, 0.690000, 0.950000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_393A_)
						end

						if arg1.interrupted then
							__FUNC_378D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_378D_)
					end

					if arg1.interrupted then
						__FUNC_360E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_360E_)
				end

				if arg1.interrupted then
					__FUNC_3488_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3488_)
			end

			if arg1.interrupted then
				__FUNC_32E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32E4_)
		end

		registerVal4:completeAnimation()
		registerVal2.ChargeShotSmallCenter1:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.ChargeShotSmallCenter1:setAlpha(1.000000)
		__FUNC_318C_(registerVal4, {})
		local function __FUNC_3B20_(arg0, arg1)
			local function __FUNC_3C78_(arg0, arg1)
				local function __FUNC_3E26_(arg0, arg1)
					local function __FUNC_3FA5_(arg0, arg1)
						local function __FUNC_412F_(arg0, arg1)
							local function __FUNC_42DA_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(0.290000, 0.690000, 0.950000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_42DA_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.290000, 0.690000, 0.950000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42DA_)
						end

						if arg1.interrupted then
							__FUNC_412F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.310000, 0.700000, 0.950000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_412F_)
					end

					if arg1.interrupted then
						__FUNC_3FA5_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FA5_)
				end

				if arg1.interrupted then
					__FUNC_3E26_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.370000, 0.720000, 0.950000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E26_)
			end

			if arg1.interrupted then
				__FUNC_3C78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C78_)
		end

		registerVal5:completeAnimation()
		registerVal2.ChargeShotCenterReticle:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.ChargeShotCenterReticle:setAlpha(1.000000)
		__FUNC_3B20_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ChargerShottopArrow1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ChargerShottopArrow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_44C0_(arg0, arg1)
			local function __FUNC_4618_(arg0, arg1)
				local function __FUNC_47A8_(arg0, arg1)
					local function __FUNC_4938_(arg0, arg1)
						local function __FUNC_4AC8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -188.740000, -129.740000)
							arg0:setTopBottom(false, false, -26.040000, 32.960000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4AC8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -128.000000, -69.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AC8_)
					end

					if arg1.interrupted then
						__FUNC_4938_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -97.630000, -38.630000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4938_)
				end

				if arg1.interrupted then
					__FUNC_47A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -97.630000, -38.630000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47A8_)
			end

			if arg1.interrupted then
				__FUNC_4618_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4618_)
		end

		registerVal8:completeAnimation()
		registerVal2.ChargerShotMovingArrow1:setLeftRight(false, false, -189.790000, -130.790000)
		registerVal2.ChargerShotMovingArrow1:setTopBottom(false, false, -26.040000, 32.960000)
		registerVal2.ChargerShotMovingArrow1:setAlpha(1.000000)
		__FUNC_44C0_(registerVal8, {})
		local function __FUNC_4CED_(arg0, arg1)
			local function __FUNC_4E44_(arg0, arg1)
				local function __FUNC_4FD4_(arg0, arg1)
					local function __FUNC_5164_(arg0, arg1)
						local function __FUNC_52F4_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 259.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, 131.060000, 187.100000)
							arg0:setTopBottom(false, false, -25.520000, 30.520000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_52F4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, 66.600000, 122.640000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52F4_)
					end

					if arg1.interrupted then
						__FUNC_5164_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, 34.370000, 90.410000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5164_)
				end

				if arg1.interrupted then
					__FUNC_4FD4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 34.370000, 90.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD4_)
			end

			if arg1.interrupted then
				__FUNC_4E44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E44_)
		end

		registerVal9:completeAnimation()
		registerVal2.ChargerShotMovingArrow2:setLeftRight(false, false, 129.500000, 185.540000)
		registerVal2.ChargerShotMovingArrow2:setTopBottom(false, false, -25.520000, 30.520000)
		registerVal2.ChargerShotMovingArrow2:setAlpha(1.000000)
		__FUNC_4CED_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ChargerShotReticleSide1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ChargerShotReticleSide2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_5519_(arg0, arg1)
			local function __FUNC_5670_(arg0, arg1)
				local function __FUNC_57EB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, 29.200000, 199.010000)
					arg0:setTopBottom(false, false, -197.120000, -23.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_57EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 440.000000, true, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57EB_)
			end

			if arg1.interrupted then
				__FUNC_5670_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5670_)
		end

		registerVal13:completeAnimation()
		registerVal2.ChargerShotActiveLock0:setLeftRight(false, false, 29.200000, 199.010000)
		registerVal2.ChargerShotActiveLock0:setTopBottom(false, false, -197.120000, -23.500000)
		registerVal2.ChargerShotActiveLock0:setAlpha(0.000000)
		__FUNC_5519_(registerVal13, {})
		local function __FUNC_5A0D_(arg0, arg1)
			local function __FUNC_5B64_(arg0, arg1)
				local function __FUNC_5CDF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -199.790000, -24.910000)
					arg0:setTopBottom(false, false, -199.180000, -21.320000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5CDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 440.000000, true, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CDF_)
			end

			if arg1.interrupted then
				__FUNC_5B64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B64_)
		end

		registerVal14:completeAnimation()
		registerVal2.ChargerShotActiveLock3:setLeftRight(false, false, -199.790000, -24.910000)
		registerVal2.ChargerShotActiveLock3:setTopBottom(false, false, -199.180000, -21.320000)
		registerVal2.ChargerShotActiveLock3:setAlpha(0.000000)
		__FUNC_5A0D_(registerVal14, {})
		local function __FUNC_5F01_(arg0, arg1)
			local function __FUNC_6058_(arg0, arg1)
				local function __FUNC_61D3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -198.740000, -23.910000)
					arg0:setTopBottom(false, false, 27.300000, 202.130000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_61D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 440.000000, true, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61D3_)
			end

			if arg1.interrupted then
				__FUNC_6058_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6058_)
		end

		registerVal15:completeAnimation()
		registerVal2.ChargerShotActiveLock10:setLeftRight(false, false, -198.740000, -23.910000)
		registerVal2.ChargerShotActiveLock10:setTopBottom(false, false, 27.300000, 202.130000)
		registerVal2.ChargerShotActiveLock10:setAlpha(0.000000)
		__FUNC_5F01_(registerVal15, {})
		local function __FUNC_63F5_(arg0, arg1)
			local function __FUNC_654C_(arg0, arg1)
				local function __FUNC_66C7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 189.000000, true, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, 28.370000, 199.010000)
					arg0:setTopBottom(false, false, 28.300000, 198.940000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_66C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 440.000000, true, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C7_)
			end

			if arg1.interrupted then
				__FUNC_654C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_654C_)
		end

		registerVal16:completeAnimation()
		registerVal2.ChargerShotActiveLock20:setLeftRight(false, false, 28.370000, 199.010000)
		registerVal2.ChargerShotActiveLock20:setTopBottom(false, false, 28.300000, 198.940000)
		registerVal2.ChargerShotActiveLock20:setAlpha(0.000000)
		__FUNC_63F5_(registerVal16, {})
		local function __FUNC_68E9_(arg0, arg1)
			local function __FUNC_6A63_(arg0, arg1)
				local function __FUNC_6BDB_(arg0, arg1)
					local function __FUNC_6D53_(arg0, arg1)
						local function __FUNC_6EA8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 399.000000, true, true, CoD.TweenType.Bounce)
							end
							arg0:setAlpha(1.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6EA8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EA8_)
					end

					if arg1.interrupted then
						__FUNC_6D53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Bounce)
					arg0:setScale(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D53_)
				end

				if arg1.interrupted then
					__FUNC_6BDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BDB_)
			end

			if arg1.interrupted then
				__FUNC_6A63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A63_)
		end

		registerVal17:completeAnimation()
		registerVal2.ChargerShot4cornerline:setAlpha(1.000000)
		registerVal2.ChargerShot4cornerline:setScale(1.000000)
		__FUNC_68E9_(registerVal17, {})
		local function __FUNC_707B_(arg0, arg1)
			local function __FUNC_71F3_(arg0, arg1)
				local function __FUNC_736B_(arg0, arg1)
					local function __FUNC_74C0_(arg0, arg1)
						local function __FUNC_763B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -209.060000, 204.710000)
							arg0:setTopBottom(false, false, -198.010000, 202.640000)
							arg0:setAlpha(1.000000)
							arg0:setScale(1.100000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_763B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 399.000000, true, true, CoD.TweenType.Linear)
						arg0:setScale(1.100000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_763B_)
					end

					if arg1.interrupted then
						__FUNC_74C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74C0_)
				end

				if arg1.interrupted then
					__FUNC_736B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Linear)
				arg0:setScale(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_736B_)
			end

			if arg1.interrupted then
				__FUNC_71F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71F3_)
		end

		registerVal18:completeAnimation()
		registerVal2.ChargerShot4cornerBracket0:setLeftRight(false, false, -209.060000, 204.710000)
		registerVal2.ChargerShot4cornerBracket0:setTopBottom(false, false, -198.010000, 202.640000)
		registerVal2.ChargerShot4cornerBracket0:setAlpha(1.000000)
		registerVal2.ChargerShot4cornerBracket0:setScale(1.100000)
		__FUNC_707B_(registerVal18, {})
		local function __FUNC_7880_(arg0, arg1)
			local function __FUNC_79FB_(arg0, arg1)
				local function __FUNC_7B50_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7B50_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B50_)
			end

			if arg1.interrupted then
				__FUNC_79FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79FB_)
		end

		registerVal20:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setRGB(1.000000, 0.000000, 0.000000)
		registerVal20:setAlpha(0.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_7880_)
		local function __FUNC_7D2E_(arg0, arg1)
			local function __FUNC_7EA7_(arg0, arg1)
				local function __FUNC_7FFC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7FFC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FFC_)
			end

			if arg1.interrupted then
				__FUNC_7EA7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EA7_)
		end

		registerVal21:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setRGB(1.000000, 0.000000, 0.000000)
		registerVal21:setAlpha(0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_7D2E_)
		local function __FUNC_81DA_(arg0, arg1)
			local function __FUNC_8353_(arg0, arg1)
				local function __FUNC_84A8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_84A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84A8_)
			end

			if arg1.interrupted then
				__FUNC_8353_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8353_)
		end

		registerVal22:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setRGB(1.000000, 0.000000, 0.000000)
		registerVal22:setAlpha(0.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_81DA_)
	end

	registerVal24.Fire = __FUNC_18E2_
	local function __FUNC_8686_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.ChargeShotSmallCenter0:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChargeShotSmallCenter1:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ChargeShotCenterReticle:setRGB(0.290000, 0.690000, 0.950000)
		registerVal2.ChargeShotCenterReticle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_9006_(arg0, arg1)
			local function __FUNC_9194_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -189.790000, -130.790000)
				arg0:setTopBottom(false, false, -26.040000, 32.960000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9194_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -189.790000, -130.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9194_)
		end

		registerVal8:completeAnimation()
		registerVal2.ChargerShotMovingArrow1:setLeftRight(false, false, -131.740000, -72.740000)
		registerVal2.ChargerShotMovingArrow1:setTopBottom(false, false, -26.040000, 32.960000)
		registerVal2.ChargerShotMovingArrow1:setAlpha(1.000000)
		__FUNC_9006_(registerVal8, {})
		local function __FUNC_93B9_(arg0, arg1)
			local function __FUNC_9548_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 129.500000, 185.540000)
				arg0:setTopBottom(false, false, -25.520000, 30.520000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9548_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 129.500000, 185.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9548_)
		end

		registerVal9:completeAnimation()
		registerVal2.ChargerShotMovingArrow2:setLeftRight(false, false, 68.060000, 124.100000)
		registerVal2.ChargerShotMovingArrow2:setTopBottom(false, false, -25.520000, 30.520000)
		registerVal2.ChargerShotMovingArrow2:setAlpha(1.000000)
		__FUNC_93B9_(registerVal9, {})
		local function __FUNC_976D_(arg0, arg1)
			local function __FUNC_98C4_(arg0, arg1)
				local function __FUNC_9A1C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 29.200000, 199.010000)
					arg0:setTopBottom(false, false, -197.120000, -23.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9A1C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A1C_)
			end

			if arg1.interrupted then
				__FUNC_98C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, true, true, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C4_)
		end

		registerVal13:completeAnimation()
		registerVal2.ChargerShotActiveLock0:setLeftRight(false, false, 29.200000, 199.010000)
		registerVal2.ChargerShotActiveLock0:setTopBottom(false, false, -197.120000, -23.500000)
		registerVal2.ChargerShotActiveLock0:setAlpha(0.000000)
		__FUNC_976D_(registerVal13, {})
		local function __FUNC_9C41_(arg0, arg1)
			local function __FUNC_9D98_(arg0, arg1)
				local function __FUNC_9F13_(arg0, arg1)
					local function __FUNC_A08B_(arg0, arg1)
						local function __FUNC_A1E0_(arg0, arg1)
							local function __FUNC_A338_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -199.790000, -24.910000)
								arg0:setTopBottom(false, false, -199.180000, -21.320000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_A338_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A338_)
						end

						if arg1.interrupted then
							__FUNC_A1E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1E0_)
					end

					if arg1.interrupted then
						__FUNC_A08B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A08B_)
				end

				if arg1.interrupted then
					__FUNC_9F13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, true, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F13_)
			end

			if arg1.interrupted then
				__FUNC_9D98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D98_)
		end

		registerVal14:completeAnimation()
		registerVal2.ChargerShotActiveLock3:setLeftRight(false, false, -199.790000, -24.910000)
		registerVal2.ChargerShotActiveLock3:setTopBottom(false, false, -199.180000, -21.320000)
		registerVal2.ChargerShotActiveLock3:setAlpha(0.000000)
		__FUNC_9C41_(registerVal14, {})
		local function __FUNC_A55D_(arg0, arg1)
			local function __FUNC_A6B4_(arg0, arg1)
				local function __FUNC_A82F_(arg0, arg1)
					local function __FUNC_A9A7_(arg0, arg1)
						local function __FUNC_AAFC_(arg0, arg1)
							local function __FUNC_AC54_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -198.740000, -23.910000)
								arg0:setTopBottom(false, false, 27.300000, 202.130000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_AC54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC54_)
						end

						if arg1.interrupted then
							__FUNC_AAFC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAFC_)
					end

					if arg1.interrupted then
						__FUNC_A9A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9A7_)
				end

				if arg1.interrupted then
					__FUNC_A82F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, true, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A82F_)
			end

			if arg1.interrupted then
				__FUNC_A6B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6B4_)
		end

		registerVal15:completeAnimation()
		registerVal2.ChargerShotActiveLock10:setLeftRight(false, false, -198.740000, -23.910000)
		registerVal2.ChargerShotActiveLock10:setTopBottom(false, false, 27.300000, 202.130000)
		registerVal2.ChargerShotActiveLock10:setAlpha(0.000000)
		__FUNC_A55D_(registerVal15, {})
		local function __FUNC_AE79_(arg0, arg1)
			local function __FUNC_AFD0_(arg0, arg1)
				local function __FUNC_B14B_(arg0, arg1)
					local function __FUNC_B2C3_(arg0, arg1)
						local function __FUNC_B418_(arg0, arg1)
							local function __FUNC_B570_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, 28.370000, 199.010000)
								arg0:setTopBottom(false, false, 28.300000, 198.940000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_B570_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B570_)
						end

						if arg1.interrupted then
							__FUNC_B418_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B418_)
					end

					if arg1.interrupted then
						__FUNC_B2C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2C3_)
				end

				if arg1.interrupted then
					__FUNC_B14B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 0.000000, true, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B14B_)
			end

			if arg1.interrupted then
				__FUNC_AFD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFD0_)
		end

		registerVal16:completeAnimation()
		registerVal2.ChargerShotActiveLock20:setLeftRight(false, false, 28.370000, 199.010000)
		registerVal2.ChargerShotActiveLock20:setTopBottom(false, false, 28.300000, 198.940000)
		registerVal2.ChargerShotActiveLock20:setAlpha(0.000000)
		__FUNC_AE79_(registerVal16, {})
		local function __FUNC_B795_(arg0, arg1)
			local function __FUNC_B90F_(arg0, arg1)
				local function __FUNC_BA87_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_BA87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA87_)
			end

			if arg1.interrupted then
				__FUNC_B90F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B90F_)
		end

		registerVal17:completeAnimation()
		registerVal2.ChargerShot4cornerline:setAlpha(1.000000)
		registerVal2.ChargerShot4cornerline:setScale(0.400000)
		__FUNC_B795_(registerVal17, {})
		local function __FUNC_BC57_(arg0, arg1)
			local function __FUNC_BDAC_(arg0, arg1)
				local function __FUNC_BF27_(arg0, arg1)
					local function __FUNC_C09F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setScale(1.100000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C09F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C09F_)
				end

				if arg1.interrupted then
					__FUNC_BF27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.900000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF27_)
			end

			if arg1.interrupted then
				__FUNC_BDAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, true, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDAC_)
		end

		registerVal18:completeAnimation()
		registerVal2.ChargerShot4cornerBracket0:setAlpha(1.000000)
		registerVal2.ChargerShot4cornerBracket0:setScale(0.800000)
		__FUNC_BC57_(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.ChargeShotCenterReticle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ChargeShotSmallCenter10:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ChargeShotSmallCenter10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.ChargeShotSmallCenter00:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ChargeShotSmallCenter00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Cancel = __FUNC_8686_
	registerVal23.DefaultState = registerVal24
	registerVal2.clipsPerState = registerVal23
	local function __FUNC_C274_(arg0)
		local registerVal2 = IsModelParameterValueEnum(arg0, Enum.WeaponFireEvent.WEAPON_EVENT_FIRING)
		if registerVal2 then
			PlayClip(registerVal2, "Fire", arg1)
		else
			registerVal2 = IsModelParameterValueEnum(arg0, Enum.WeaponFireEvent.WEAPON_EVENT_CANCELLED)
			if registerVal2 then
				PlayClip(registerVal2, "Cancel", arg1)
			end
		end
	end

	registerVal2:linkToElementModel(registerVal2, "weaponDelayFiring", true, __FUNC_C274_)
	local function __FUNC_C3E7_(arg0)
		arg0.ChargeShotSmallCenter0:close()
		arg0.ChargeShotSmallCenter1:close()
		arg0.ChargeShotCenterReticle:close()
		arg0.ChargerShottopArrow1:close()
		arg0.ChargerShottopArrow2:close()
		arg0.ChargerShotMovingArrow1:close()
		arg0.ChargerShotMovingArrow2:close()
		arg0.ChargerShotReticleSide1:close()
		arg0.ChargerShotReticleSide2:close()
		arg0.ChargerShotActiveCenter:close()
		arg0.ChargerShotActiveLock0:close()
		arg0.ChargerShotActiveLock3:close()
		arg0.ChargerShotActiveLock10:close()
		arg0.ChargerShotActiveLock20:close()
		arg0.ChargerShot4cornerline:close()
		arg0.ChargerShot4cornerBracket0:close()
		arg0.ChargerShotBrackets:close()
		arg0.ChargeShotCenterReticle0:close()
		arg0.ChargeShotSmallCenter10:close()
		arg0.ChargeShotSmallCenter00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C3E7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

