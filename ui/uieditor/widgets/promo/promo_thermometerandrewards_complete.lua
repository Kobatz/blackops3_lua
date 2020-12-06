-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_ThermometerAndRewards_Complete = registerVal1
function CoD.Promo_ThermometerAndRewards_Complete.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ThermometerAndRewards_Complete)
	registerVal2.id = "Promo_ThermometerAndRewards_Complete"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 243.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 594.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 101.750000, 667.420000)
	registerVal3:setTopBottom(true, false, 12.330000, 197.670000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowlarge"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 1.360000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.290000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LargeGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 101.750000, 667.420000)
	registerVal4:setTopBottom(true, false, 12.330000, 197.670000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowlarge"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.360000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.290000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LargeGlow0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 101.750000, 667.420000)
	registerVal5:setTopBottom(true, false, 12.330000, 197.670000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowlarge"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 1.360000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.290000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.LargeGlow00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 15.380000, 227.130000)
	registerVal6:setTopBottom(false, true, -594.000000, -29.330000)
	registerVal6:setAlpha(0.220000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_mainbargglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, -0.130000, 0.920000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.620000, 0.210000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ThermometerGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 89.500000, 148.500000)
	registerVal7:setTopBottom(true, false, 45.710000, 126.830000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_boltcore"))
	registerVal2:addElement(registerVal7)
	registerVal2.CoreComplete = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal8:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal8:setAlpha(0.250000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt1a"))
	registerVal2:addElement(registerVal8)
	registerVal2.Bolt1a = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal9:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal9:setAlpha(0.350000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt1b"))
	registerVal2:addElement(registerVal9)
	registerVal2.Bolt1b = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal10:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt1c"))
	registerVal2:addElement(registerVal10)
	registerVal2.Bolt1c = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal11:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal11:setAlpha(0.250000)
	registerVal11:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt2a"))
	registerVal2:addElement(registerVal11)
	registerVal2.Bolt2a = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal12:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal12:setAlpha(0.350000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt2b"))
	registerVal2:addElement(registerVal12)
	registerVal2.Bolt2b = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal13:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal13:setAlpha(0.450000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt2c"))
	registerVal2:addElement(registerVal13)
	registerVal2.Bolt2c = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal14:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal14:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt2d"))
	registerVal2:addElement(registerVal14)
	registerVal2.Bolt2d = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal15:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal15:setAlpha(0.250000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt3a"))
	registerVal2:addElement(registerVal15)
	registerVal2.Bolt3a = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal16:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal16:setAlpha(0.350000)
	registerVal16:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt3b"))
	registerVal2:addElement(registerVal16)
	registerVal2.Bolt3b = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal17:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal17:setAlpha(0.450000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt3c"))
	registerVal2:addElement(registerVal17)
	registerVal2.Bolt3c = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal18:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal18:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt3d"))
	registerVal2:addElement(registerVal18)
	registerVal2.Bolt3d = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal19:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal19:setAlpha(0.250000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt4a"))
	registerVal2:addElement(registerVal19)
	registerVal2.Bolt4a = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal20:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal20:setAlpha(0.350000)
	registerVal20:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt4b"))
	registerVal2:addElement(registerVal20)
	registerVal2.Bolt4b = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal21:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal21:setAlpha(0.450000)
	registerVal21:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt4c"))
	registerVal2:addElement(registerVal21)
	registerVal2.Bolt4c = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, -14.880000, 268.380000)
	registerVal22:setTopBottom(true, false, -52.290000, 131.830000)
	registerVal22:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_bolt4d"))
	registerVal2:addElement(registerVal22)
	registerVal2.Bolt4d = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 0.000000, 234.630000)
	registerVal23:setTopBottom(true, false, 297.000000, 423.740000)
	registerVal23:setRGB(0.680000, 0.980000, 1.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setZRot(88.000000)
	registerVal23:setScale(1.300000)
	registerVal23:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.whiteFlash0 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 0.000000, 242.510000)
	registerVal24:setTopBottom(false, true, -204.930000, 0.270000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setZRot(-28.870000)
	registerVal24:setImage(RegisterImage("uie_t7_callingcards_champion_light4"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.biglightFlare = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 55.750000, 178.250000)
	registerVal25:setTopBottom(false, true, -159.330000, -36.830000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse2_99"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.GlowPulseOuter = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 55.750000, 178.250000)
	registerVal26:setTopBottom(false, true, -159.330000, -37.560000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse3"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.GlowPulseOuter2 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 27.000000, 207.000000)
	registerVal27:setTopBottom(false, true, -225.330000, -77.330000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.GlowPulseLine = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(true, false, 102.000000, 134.590000)
	registerVal28:setTopBottom(false, true, -173.040000, -130.620000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_lineglow"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.GlowPulseLine0 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, 75.750000, 160.840000)
	registerVal29:setTopBottom(false, true, -173.040000, -142.330000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse4"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.GlowDots = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal30:setTopBottom(false, true, -250.330000, -234.330000)
	registerVal30:setAlpha(0.000000)
	registerVal30:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.GlowDots2 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal31:setTopBottom(false, true, -347.330000, -331.330000)
	registerVal31:setAlpha(0.000000)
	registerVal31:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.GlowDots3 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal32:setTopBottom(false, true, -445.330000, -429.330000)
	registerVal32:setAlpha(0.000000)
	registerVal32:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.GlowDots4 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, false, 75.750000, 163.750000)
	registerVal33:setTopBottom(false, true, -542.330000, -526.330000)
	registerVal33:setAlpha(0.000000)
	registerVal33:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse5"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.GlowDots5 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, 31.750000, 207.750000)
	registerVal34:setTopBottom(false, true, -185.330000, -9.330000)
	registerVal34:setAlpha(0.000000)
	registerVal34:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.GlowPulse = registerVal34
	local registerVal35 = {}
	local registerVal36 = {}
	local function __FUNC_2401_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal3:completeAnimation()
		registerVal2.LargeGlow:setAlpha(0.000000)
		registerVal2.LargeGlow:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.LargeGlow:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.LargeGlow:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LargeGlow:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.LargeGlow:setShaderVector(3.000000, 0.000000, 0.290000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LargeGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LargeGlow00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ThermometerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CoreComplete:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Bolt1a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Bolt1b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Bolt1c:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Bolt2a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Bolt2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bolt2c:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bolt2d:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Bolt3a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Bolt3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.Bolt3c:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Bolt3d:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Bolt4a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Bolt4b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Bolt4c:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Bolt4d:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.whiteFlash0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.biglightFlare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal36.DefaultClip = __FUNC_2401_
	local function __FUNC_2D88_()
		registerVal2:setupElementClipCounter(22.000000)
		local function __FUNC_3634_(arg0, arg1)
			local function __FUNC_378C_(arg0, arg1)
				local function __FUNC_3907_(arg0, arg1)
					local function __FUNC_3A7F_(arg0, arg1)
						local function __FUNC_3BF7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3BF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BF7_)
					end

					if arg1.interrupted then
						__FUNC_3A7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A7F_)
				end

				if arg1.interrupted then
					__FUNC_3907_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3907_)
			end

			if arg1.interrupted then
				__FUNC_378C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_378C_)
		end

		registerVal3:completeAnimation()
		registerVal2.LargeGlow:setAlpha(0.000000)
		__FUNC_3634_(registerVal3, {})
		local function __FUNC_3DA9_(arg0, arg1)
			local function __FUNC_3F00_(arg0, arg1)
				local function __FUNC_407B_(arg0, arg1)
					local function __FUNC_41F3_(arg0, arg1)
						local function __FUNC_436B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_436B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_436B_)
					end

					if arg1.interrupted then
						__FUNC_41F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41F3_)
				end

				if arg1.interrupted then
					__FUNC_407B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_407B_)
			end

			if arg1.interrupted then
				__FUNC_3F00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F00_)
		end

		registerVal4:completeAnimation()
		registerVal2.LargeGlow0:setAlpha(0.000000)
		__FUNC_3DA9_(registerVal4, {})
		local function __FUNC_451D_(arg0, arg1)
			local function __FUNC_4674_(arg0, arg1)
				local function __FUNC_47EF_(arg0, arg1)
					local function __FUNC_4967_(arg0, arg1)
						local function __FUNC_4ADF_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4ADF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ADF_)
					end

					if arg1.interrupted then
						__FUNC_4967_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4967_)
				end

				if arg1.interrupted then
					__FUNC_47EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47EF_)
			end

			if arg1.interrupted then
				__FUNC_4674_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4674_)
		end

		registerVal5:completeAnimation()
		registerVal2.LargeGlow00:setAlpha(0.000000)
		__FUNC_451D_(registerVal5, {})
		local function __FUNC_4C91_(arg0, arg1)
			local function __FUNC_4E0B_(arg0, arg1)
				local function __FUNC_4F83_(arg0, arg1)
					local function __FUNC_50FB_(arg0, arg1)
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
						__FUNC_50FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.440000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50FB_)
				end

				if arg1.interrupted then
					__FUNC_4F83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F83_)
			end

			if arg1.interrupted then
				__FUNC_4E0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E0B_)
		end

		registerVal6:completeAnimation()
		registerVal2.ThermometerGlow:setAlpha(0.000000)
		__FUNC_4C91_(registerVal6, {})
		local function __FUNC_52AD_(arg0, arg1)
			local function __FUNC_5427_(arg0, arg1)
				local function __FUNC_559F_(arg0, arg1)
					local function __FUNC_5717_(arg0, arg1)
						local function __FUNC_588F_(arg0, arg1)
							local function __FUNC_5A07_(arg0, arg1)
								local function __FUNC_5B5C_(arg0, arg1)
									local function __FUNC_5CB4_(arg0, arg1)
										local function __FUNC_5E2F_(arg0, arg1)
											local function __FUNC_5FA7_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_5FA7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.990000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FA7_)
										end

										if arg1.interrupted then
											__FUNC_5E2F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.430000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E2F_)
									end

									if arg1.interrupted then
										__FUNC_5CB4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CB4_)
								end

								if arg1.interrupted then
									__FUNC_5B5C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1460.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B5C_)
							end

							if arg1.interrupted then
								__FUNC_5A07_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A07_)
						end

						if arg1.interrupted then
							__FUNC_588F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_588F_)
					end

					if arg1.interrupted then
						__FUNC_5717_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5717_)
				end

				if arg1.interrupted then
					__FUNC_559F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_559F_)
			end

			if arg1.interrupted then
				__FUNC_5427_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5427_)
		end

		registerVal7:completeAnimation()
		registerVal2.CoreComplete:setAlpha(0.000000)
		__FUNC_52AD_(registerVal7, {})
		local function __FUNC_6159_(arg0, arg1)
			local function __FUNC_62B0_(arg0, arg1)
				local function __FUNC_642B_(arg0, arg1)
					local function __FUNC_6580_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6580_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6580_)
				end

				if arg1.interrupted then
					__FUNC_642B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_642B_)
			end

			if arg1.interrupted then
				__FUNC_62B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62B0_)
		end

		registerVal8:completeAnimation()
		registerVal2.Bolt1a:setAlpha(0.000000)
		__FUNC_6159_(registerVal8, {})
		local function __FUNC_6735_(arg0, arg1)
			local function __FUNC_688C_(arg0, arg1)
				local function __FUNC_6A07_(arg0, arg1)
					local function __FUNC_6B5C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6B5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B5C_)
				end

				if arg1.interrupted then
					__FUNC_6A07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A07_)
			end

			if arg1.interrupted then
				__FUNC_688C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_688C_)
		end

		registerVal9:completeAnimation()
		registerVal2.Bolt1b:setAlpha(0.000000)
		__FUNC_6735_(registerVal9, {})
		local function __FUNC_6D11_(arg0, arg1)
			local function __FUNC_6E68_(arg0, arg1)
				local function __FUNC_6FE3_(arg0, arg1)
					local function __FUNC_715B_(arg0, arg1)
						local function __FUNC_72D3_(arg0, arg1)
							local function __FUNC_7428_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7428_)
						end

						if arg1.interrupted then
							__FUNC_72D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72D3_)
					end

					if arg1.interrupted then
						__FUNC_715B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_715B_)
				end

				if arg1.interrupted then
					__FUNC_6FE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FE3_)
			end

			if arg1.interrupted then
				__FUNC_6E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E68_)
		end

		registerVal10:completeAnimation()
		registerVal2.Bolt1c:setAlpha(0.000000)
		__FUNC_6D11_(registerVal10, {})
		local function __FUNC_75DD_(arg0, arg1)
			local function __FUNC_7734_(arg0, arg1)
				local function __FUNC_78AF_(arg0, arg1)
					local function __FUNC_7A04_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7A04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 749.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A04_)
				end

				if arg1.interrupted then
					__FUNC_78AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78AF_)
			end

			if arg1.interrupted then
				__FUNC_7734_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7734_)
		end

		registerVal11:completeAnimation()
		registerVal2.Bolt2a:setAlpha(0.000000)
		__FUNC_75DD_(registerVal11, {})
		local function __FUNC_7BB9_(arg0, arg1)
			local function __FUNC_7D10_(arg0, arg1)
				local function __FUNC_7E8B_(arg0, arg1)
					local function __FUNC_7FE0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7FE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FE0_)
				end

				if arg1.interrupted then
					__FUNC_7E8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E8B_)
			end

			if arg1.interrupted then
				__FUNC_7D10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D10_)
		end

		registerVal12:completeAnimation()
		registerVal2.Bolt2b:setAlpha(0.000000)
		__FUNC_7BB9_(registerVal12, {})
		local function __FUNC_8195_(arg0, arg1)
			local function __FUNC_82EC_(arg0, arg1)
				local function __FUNC_8467_(arg0, arg1)
					local function __FUNC_85BC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_85BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 429.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85BC_)
				end

				if arg1.interrupted then
					__FUNC_8467_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8467_)
			end

			if arg1.interrupted then
				__FUNC_82EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1190.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82EC_)
		end

		registerVal13:completeAnimation()
		registerVal2.Bolt2c:setAlpha(0.000000)
		__FUNC_8195_(registerVal13, {})
		local function __FUNC_8771_(arg0, arg1)
			local function __FUNC_88C8_(arg0, arg1)
				local function __FUNC_8A43_(arg0, arg1)
					local function __FUNC_8BBB_(arg0, arg1)
						local function __FUNC_8D33_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_8D33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D33_)
					end

					if arg1.interrupted then
						__FUNC_8BBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.340000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BBB_)
				end

				if arg1.interrupted then
					__FUNC_8A43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A43_)
			end

			if arg1.interrupted then
				__FUNC_88C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88C8_)
		end

		registerVal14:completeAnimation()
		registerVal2.Bolt2d:setAlpha(0.000000)
		__FUNC_8771_(registerVal14, {})
		local function __FUNC_8EE5_(arg0, arg1)
			local function __FUNC_903C_(arg0, arg1)
				local function __FUNC_91B7_(arg0, arg1)
					local function __FUNC_930C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_930C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_930C_)
				end

				if arg1.interrupted then
					__FUNC_91B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91B7_)
			end

			if arg1.interrupted then
				__FUNC_903C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_903C_)
		end

		registerVal15:completeAnimation()
		registerVal2.Bolt3a:setAlpha(0.000000)
		__FUNC_8EE5_(registerVal15, {})
		local function __FUNC_94C1_(arg0, arg1)
			local function __FUNC_9618_(arg0, arg1)
				local function __FUNC_9793_(arg0, arg1)
					local function __FUNC_98E8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_98E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 820.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98E8_)
				end

				if arg1.interrupted then
					__FUNC_9793_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9793_)
			end

			if arg1.interrupted then
				__FUNC_9618_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9618_)
		end

		registerVal16:completeAnimation()
		registerVal2.Bolt3b:setAlpha(0.000000)
		__FUNC_94C1_(registerVal16, {})
		local function __FUNC_9A9D_(arg0, arg1)
			local function __FUNC_9BF4_(arg0, arg1)
				local function __FUNC_9D6F_(arg0, arg1)
					local function __FUNC_9EC4_(arg0, arg1)
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
						__FUNC_9EC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EC4_)
				end

				if arg1.interrupted then
					__FUNC_9D6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D6F_)
			end

			if arg1.interrupted then
				__FUNC_9BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BF4_)
		end

		registerVal17:completeAnimation()
		registerVal2.Bolt3c:setAlpha(0.000000)
		__FUNC_9A9D_(registerVal17, {})
		local function __FUNC_A079_(arg0, arg1)
			local function __FUNC_A1D0_(arg0, arg1)
				local function __FUNC_A34B_(arg0, arg1)
					local function __FUNC_A4C3_(arg0, arg1)
						local function __FUNC_A63B_(arg0, arg1)
							local function __FUNC_A790_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_A790_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A790_)
						end

						if arg1.interrupted then
							__FUNC_A63B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A63B_)
					end

					if arg1.interrupted then
						__FUNC_A4C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.270000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4C3_)
				end

				if arg1.interrupted then
					__FUNC_A34B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A34B_)
			end

			if arg1.interrupted then
				__FUNC_A1D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1D0_)
		end

		registerVal18:completeAnimation()
		registerVal2.Bolt3d:setAlpha(0.000000)
		__FUNC_A079_(registerVal18, {})
		local function __FUNC_A945_(arg0, arg1)
			local function __FUNC_AA9C_(arg0, arg1)
				local function __FUNC_AC17_(arg0, arg1)
					local function __FUNC_AD6C_(arg0, arg1)
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
						__FUNC_AD6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD6C_)
				end

				if arg1.interrupted then
					__FUNC_AC17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC17_)
			end

			if arg1.interrupted then
				__FUNC_AA9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA9C_)
		end

		registerVal19:completeAnimation()
		registerVal2.Bolt4a:setAlpha(0.000000)
		__FUNC_A945_(registerVal19, {})
		local function __FUNC_AF21_(arg0, arg1)
			local function __FUNC_B078_(arg0, arg1)
				local function __FUNC_B1F3_(arg0, arg1)
					local function __FUNC_B348_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B348_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B348_)
				end

				if arg1.interrupted then
					__FUNC_B1F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1F3_)
			end

			if arg1.interrupted then
				__FUNC_B078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B078_)
		end

		registerVal20:completeAnimation()
		registerVal2.Bolt4b:setAlpha(0.000000)
		__FUNC_AF21_(registerVal20, {})
		local function __FUNC_B4FD_(arg0, arg1)
			local function __FUNC_B654_(arg0, arg1)
				local function __FUNC_B7CF_(arg0, arg1)
					local function __FUNC_B924_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B924_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B924_)
				end

				if arg1.interrupted then
					__FUNC_B7CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7CF_)
			end

			if arg1.interrupted then
				__FUNC_B654_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B654_)
		end

		registerVal21:completeAnimation()
		registerVal2.Bolt4c:setAlpha(0.000000)
		__FUNC_B4FD_(registerVal21, {})
		local function __FUNC_BAD9_(arg0, arg1)
			local function __FUNC_BC30_(arg0, arg1)
				local function __FUNC_BDAB_(arg0, arg1)
					local function __FUNC_BF23_(arg0, arg1)
						local function __FUNC_C09B_(arg0, arg1)
							local function __FUNC_C1F0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C1F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1F0_)
						end

						if arg1.interrupted then
							__FUNC_C09B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C09B_)
					end

					if arg1.interrupted then
						__FUNC_BF23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF23_)
				end

				if arg1.interrupted then
					__FUNC_BDAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDAB_)
			end

			if arg1.interrupted then
				__FUNC_BC30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC30_)
		end

		registerVal22:completeAnimation()
		registerVal2.Bolt4d:setAlpha(0.000000)
		__FUNC_BAD9_(registerVal22, {})
		local function __FUNC_C3A5_(arg0, arg1)
			local function __FUNC_C557_(arg0, arg1)
				local function __FUNC_C72A_(arg0, arg1)
					local function __FUNC_C8FE_(arg0, arg1)
						local function __FUNC_CAD2_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 234.630000)
							arg0:setTopBottom(true, false, -86.650000, 199.100000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.500000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_CAD2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, -86.650000, 199.100000)
						arg0:setAlpha(0.610000)
						arg0:setScale(1.120000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAD2_)
					end

					if arg1.interrupted then
						__FUNC_C8FE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -27.820000, 187.250000)
					arg0:setAlpha(0.820000)
					arg0:setScale(0.990000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8FE_)
				end

				if arg1.interrupted then
					__FUNC_C72A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 23.650000, 176.890000)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C72A_)
			end

			if arg1.interrupted then
				__FUNC_C557_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 45.710000, 172.450000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C557_)
		end

		registerVal23:completeAnimation()
		registerVal2.whiteFlash0:setLeftRight(true, false, 0.000000, 234.630000)
		registerVal2.whiteFlash0:setTopBottom(true, false, 477.280000, 604.030000)
		registerVal2.whiteFlash0:setAlpha(0.000000)
		registerVal2.whiteFlash0:setScale(0.800000)
		__FUNC_C3A5_(registerVal23, {})
		local function __FUNC_CD13_(arg0, arg1)
			local function __FUNC_CE68_(arg0, arg1)
				local function __FUNC_D028_(arg0, arg1)
					local function __FUNC_D1E8_(arg0, arg1)
						local function __FUNC_D3A8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 719.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setZRot(-93.870000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_D3A8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setZRot(-39.780000)
						arg0:setScale(1.300000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3A8_)
					end

					if arg1.interrupted then
						__FUNC_D1E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:setZRot(-36.770000)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1E8_)
				end

				if arg1.interrupted then
					__FUNC_D028_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(-27.760000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D028_)
			end

			if arg1.interrupted then
				__FUNC_CE68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE68_)
		end

		registerVal24:completeAnimation()
		registerVal2.biglightFlare:setAlpha(0.000000)
		registerVal2.biglightFlare:setZRot(-24.000000)
		registerVal2.biglightFlare:setScale(1.000000)
		__FUNC_CD13_(registerVal24, {})
	end

	registerVal36.Completed = __FUNC_2D88_
	registerVal35.DefaultState = registerVal36
	registerVal36 = {}
	local function __FUNC_D5A2_()
		registerVal2:setupElementClipCounter(32.000000)
		local function __FUNC_E414_(arg0, arg1)
			local function __FUNC_E56C_(arg0, arg1)
				local function __FUNC_E6E7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1860.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E6E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6E7_)
			end

			if arg1.interrupted then
				__FUNC_E56C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E56C_)
		end

		registerVal3:completeAnimation()
		registerVal2.LargeGlow:setAlpha(0.000000)
		__FUNC_E414_(registerVal3, {})
		local function __FUNC_E899_(arg0, arg1)
			local function __FUNC_E9F0_(arg0, arg1)
				local function __FUNC_EB6B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1860.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EB6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB6B_)
			end

			if arg1.interrupted then
				__FUNC_E9F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9F0_)
		end

		registerVal4:completeAnimation()
		registerVal2.LargeGlow0:setAlpha(0.000000)
		__FUNC_E899_(registerVal4, {})
		local function __FUNC_ED1D_(arg0, arg1)
			local function __FUNC_EE74_(arg0, arg1)
				local function __FUNC_EFEF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1860.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EFEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFEF_)
			end

			if arg1.interrupted then
				__FUNC_EE74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE74_)
		end

		registerVal5:completeAnimation()
		registerVal2.LargeGlow00:setAlpha(0.000000)
		__FUNC_ED1D_(registerVal5, {})
		local function __FUNC_F1A1_(arg0, arg1)
			local function __FUNC_F31B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1290.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F31B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F31B_)
		end

		registerVal6:completeAnimation()
		registerVal2.ThermometerGlow:setAlpha(0.000000)
		__FUNC_F1A1_(registerVal6, {})
		local function __FUNC_F4CD_(arg0, arg1)
			local function __FUNC_F647_(arg0, arg1)
				local function __FUNC_F7BF_(arg0, arg1)
					local function __FUNC_F937_(arg0, arg1)
						local function __FUNC_FAAF_(arg0, arg1)
							local function __FUNC_FC27_(arg0, arg1)
								local function __FUNC_FD9F_(arg0, arg1)
									local function __FUNC_FF17_(arg0, arg1)
										local function __FUNC_1006C_(arg0, arg1)
											local function __FUNC_101C4_(arg0, arg1)
												local function __FUNC_1033F_(arg0, arg1)
													local function __FUNC_104B7_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_104B7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.990000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104B7_)
												end

												if arg1.interrupted then
													__FUNC_1033F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.430000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1033F_)
											end

											if arg1.interrupted then
												__FUNC_101C4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101C4_)
										end

										if arg1.interrupted then
											__FUNC_1006C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1006C_)
									end

									if arg1.interrupted then
										__FUNC_FF17_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF17_)
								end

								if arg1.interrupted then
									__FUNC_FD9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.660000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD9F_)
							end

							if arg1.interrupted then
								__FUNC_FC27_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC27_)
						end

						if arg1.interrupted then
							__FUNC_FAAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.550000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAAF_)
					end

					if arg1.interrupted then
						__FUNC_F937_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F937_)
				end

				if arg1.interrupted then
					__FUNC_F7BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.650000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7BF_)
			end

			if arg1.interrupted then
				__FUNC_F647_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F647_)
		end

		registerVal7:completeAnimation()
		registerVal2.CoreComplete:setAlpha(0.000000)
		__FUNC_F4CD_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Bolt1a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Bolt1b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_10669_(arg0, arg1)
			local function __FUNC_107C0_(arg0, arg1)
				local function __FUNC_1093B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1093B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1093B_)
			end

			if arg1.interrupted then
				__FUNC_107C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107C0_)
		end

		registerVal10:completeAnimation()
		registerVal2.Bolt1c:setAlpha(0.000000)
		__FUNC_10669_(registerVal10, {})
		local function __FUNC_10AED_(arg0, arg1)
			local function __FUNC_10C44_(arg0, arg1)
				local function __FUNC_10DBF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DBF_)
			end

			if arg1.interrupted then
				__FUNC_10C44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C44_)
		end

		registerVal11:completeAnimation()
		registerVal2.Bolt2a:setAlpha(0.000000)
		__FUNC_10AED_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Bolt2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bolt2c:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_10F71_(arg0, arg1)
			local function __FUNC_110C8_(arg0, arg1)
				local function __FUNC_11243_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_11243_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11243_)
			end

			if arg1.interrupted then
				__FUNC_110C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110C8_)
		end

		registerVal14:completeAnimation()
		registerVal2.Bolt2d:setAlpha(0.000000)
		__FUNC_10F71_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Bolt3a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Bolt3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_113F5_(arg0, arg1)
			local function __FUNC_1154C_(arg0, arg1)
				local function __FUNC_116C7_(arg0, arg1)
					local function __FUNC_1183F_(arg0, arg1)
						local function __FUNC_11994_(arg0, arg1)
							local function __FUNC_11B0F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_11B0F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.140000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B0F_)
						end

						if arg1.interrupted then
							__FUNC_11994_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11994_)
					end

					if arg1.interrupted then
						__FUNC_1183F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 580.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1183F_)
				end

				if arg1.interrupted then
					__FUNC_116C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116C7_)
			end

			if arg1.interrupted then
				__FUNC_1154C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1154C_)
		end

		registerVal17:completeAnimation()
		registerVal2.Bolt3c:setAlpha(0.000000)
		__FUNC_113F5_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Bolt3d:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Bolt4a:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Bolt4b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		local function __FUNC_11CC1_(arg0, arg1)
			local function __FUNC_11E18_(arg0, arg1)
				local function __FUNC_11F93_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_11F93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.910000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F93_)
			end

			if arg1.interrupted then
				__FUNC_11E18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E18_)
		end

		registerVal21:completeAnimation()
		registerVal2.Bolt4c:setAlpha(0.000000)
		__FUNC_11CC1_(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Bolt4d:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.whiteFlash0:setLeftRight(true, false, 0.000000, 234.630000)
		registerVal2.whiteFlash0:setTopBottom(true, false, 477.280000, 604.030000)
		registerVal2.whiteFlash0:setAlpha(0.000000)
		registerVal2.whiteFlash0:setScale(0.800000)
		registerVal2.clipFinished(registerVal23, {})
		local function __FUNC_12145_(arg0, arg1)
			local function __FUNC_122E1_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1929.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZRot(-80.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_122E1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:setZRot(-29.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122E1_)
		end

		registerVal24:completeAnimation()
		registerVal2.biglightFlare:setAlpha(0.000000)
		registerVal2.biglightFlare:setZRot(0.000000)
		__FUNC_12145_(registerVal24, {})
		local function __FUNC_124B7_(arg0, arg1)
			local function __FUNC_12652_(arg0, arg1)
				local function __FUNC_127EE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_127EE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:setScale(1.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127EE_)
			end

			if arg1.interrupted then
				__FUNC_12652_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12652_)
		end

		registerVal25:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:setScale(1.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_124B7_)
		local function __FUNC_129C4_(arg0, arg1)
			local function __FUNC_12B3F_(arg0, arg1)
				local function __FUNC_12CDA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(2.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_12CDA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:setScale(1.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CDA_)
			end

			if arg1.interrupted then
				__FUNC_12B3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B3F_)
		end

		registerVal26:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:setScale(1.200000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_129C4_)
		local function __FUNC_12EB0_(arg0, arg1)
			local function __FUNC_1302B_(arg0, arg1)
				local function __FUNC_131B8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 27.000000, 207.000000)
					arg0:setTopBottom(false, true, -620.170000, -472.170000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_131B8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1189.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -558.560000, -410.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131B8_)
			end

			if arg1.interrupted then
				__FUNC_1302B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1302B_)
		end

		registerVal27:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(true, false, 27.000000, 207.000000)
		registerVal27:setTopBottom(false, true, -225.330000, -77.330000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_12EB0_)
		local function __FUNC_133DD_(arg0, arg1)
			local function __FUNC_13534_(arg0, arg1)
				local function __FUNC_136AF_(arg0, arg1)
					local function __FUNC_1385F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 102.000000, 134.590000)
						arg0:setTopBottom(false, true, -568.760000, -526.330000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1385F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1189.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(false, true, -507.010000, -464.590000)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1385F_)
				end

				if arg1.interrupted then
					__FUNC_136AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136AF_)
			end

			if arg1.interrupted then
				__FUNC_13534_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13534_)
		end

		registerVal28:completeAnimation()
		registerVal2.GlowPulseLine0:setLeftRight(true, false, 102.000000, 134.590000)
		registerVal2.GlowPulseLine0:setTopBottom(false, true, -173.040000, -130.620000)
		registerVal2.GlowPulseLine0:setAlpha(0.000000)
		__FUNC_133DD_(registerVal28, {})
		local function __FUNC_13A81_(arg0, arg1)
			local function __FUNC_13BFB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BFB_)
		end

		registerVal29:beginAnimation("keyframe", 1110.000000, false, false, CoD.TweenType.Linear)
		registerVal29:setAlpha(0.000000)
		registerVal29:registerEventHandler("transition_complete_keyframe", __FUNC_13A81_)
		local function __FUNC_13DAD_(arg0, arg1)
			local function __FUNC_13F27_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 530.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13F27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F27_)
		end

		registerVal30:beginAnimation("keyframe", 1399.000000, false, false, CoD.TweenType.Linear)
		registerVal30:setAlpha(0.000000)
		registerVal30:registerEventHandler("transition_complete_keyframe", __FUNC_13DAD_)
		local function __FUNC_140D9_(arg0, arg1)
			local function __FUNC_14253_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_14253_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14253_)
		end

		registerVal31:beginAnimation("keyframe", 1750.000000, false, false, CoD.TweenType.Linear)
		registerVal31:setAlpha(0.000000)
		registerVal31:registerEventHandler("transition_complete_keyframe", __FUNC_140D9_)
		local function __FUNC_14405_(arg0, arg1)
			local function __FUNC_1457F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1457F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1457F_)
		end

		registerVal32:beginAnimation("keyframe", 2130.000000, false, false, CoD.TweenType.Linear)
		registerVal32:setAlpha(0.000000)
		registerVal32:registerEventHandler("transition_complete_keyframe", __FUNC_14405_)
		local function __FUNC_14731_(arg0, arg1)
			local function __FUNC_148AB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_148AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148AB_)
		end

		registerVal33:beginAnimation("keyframe", 2450.000000, false, false, CoD.TweenType.Linear)
		registerVal33:setAlpha(0.000000)
		registerVal33:registerEventHandler("transition_complete_keyframe", __FUNC_14731_)
		local function __FUNC_14A5D_(arg0, arg1)
			local function __FUNC_14BB4_(arg0, arg1)
				local function __FUNC_14D52_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1760.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14D52_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:setScale(1.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D52_)
			end

			if arg1.interrupted then
				__FUNC_14BB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BB4_)
		end

		registerVal34:completeAnimation()
		registerVal2.GlowPulse:setAlpha(0.000000)
		registerVal2.GlowPulse:setScale(1.000000)
		__FUNC_14A5D_(registerVal34, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal36.DefaultClip = __FUNC_D5A2_
	registerVal35.Completed = registerVal36
	registerVal2.clipsPerState = registerVal35
	local registerVal37 = {}
	local registerVal38 = {}
	registerVal38.stateName = "Completed"
	local function __FUNC_14F28_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Completed")
	end

	registerVal38.condition = __FUNC_14F28_
	registerVal37 = {registerVal38}
	registerVal2:mergeStateConditions(registerVal37)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

