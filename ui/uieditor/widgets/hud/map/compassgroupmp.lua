-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_BarTop")
require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_Element")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_BackCircleOutter")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ArrowFull")
require("ui.uieditor.widgets.HUD.CompassMinimapMap")
require("ui.uieditor.widgets.HUD.CompassMinimapItems")
require("ui.uieditor.widgets.HUD.CompassMinimapOverlay")
require("ui.uieditor.widgets.HUD.map.HorizontalCompassGroupMPContainer")
require("ui.uieditor.widgets.Notifications.Notification_SixthSense")
local function __FUNC_517_(arg0, arg1)
	local registerVal2 = DataSources.HUDItems.getModel(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "smokeEffect")
	if registerVal2 and registerVal3 then
		Engine.SetModelValue(registerVal3, -0.100000)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CompassGroupMP = registerVal2
local function __FUNC_63B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_517_ then
		__FUNC_517_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CompassGroupMP)
	registerVal2.id = "CompassGroupMP"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 204.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 16.500000, 266.500000)
	registerVal3:setTopBottom(true, false, 21.000000, 184.000000)
	registerVal3:setRGB(0.460000, 0.480000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelMap = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -108.870000, 369.540000)
	registerVal4:setTopBottom(true, false, -48.090000, 213.420000)
	registerVal4:setRGB(0.360000, 0.370000, 0.380000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowBack0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -21.580000, 292.580000)
	registerVal5:setTopBottom(true, false, -17.670000, 198.830000)
	registerVal5:setRGB(0.360000, 0.370000, 0.380000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowBack = registerVal5
	local registerVal6 = CoD.MapWidget_BarTop.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 15.000000, 267.000000)
	registerVal6:setTopBottom(true, false, 19.000000, 27.000000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.150000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BarTop = registerVal6
	local registerVal7 = CoD.MapWidget_BarTop.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 15.000000, 267.000000)
	registerVal7:setTopBottom(true, false, 158.000000, 166.000000)
	registerVal7:setAlpha(0.400000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.150000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BarBase = registerVal7
	local registerVal8 = CoD.MapWidget_Element.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 130.340000, 151.670000)
	registerVal8:setTopBottom(true, false, 180.000000, 192.330000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setZoom(-3.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BaseElement = registerVal8
	local registerVal9 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 6.000000, 10.000000)
	registerVal9:setTopBottom(true, false, 19.000000, 23.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(5.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Dot1 = registerVal9
	local registerVal10 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 271.000000, 275.000000)
	registerVal10:setTopBottom(true, false, 19.000000, 23.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(5.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Dot2 = registerVal10
	local registerVal11 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 6.000000, 10.000000)
	registerVal11:setTopBottom(true, false, 160.000000, 164.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(5.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Dot3 = registerVal11
	local registerVal12 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 271.000000, 275.000000)
	registerVal12:setTopBottom(true, false, 160.000000, 164.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(5.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.Dot4 = registerVal12
	local registerVal13 = CoD.DamageWidget_BackCircleOutter.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 87.500000, 194.500000)
	registerVal13:setTopBottom(true, false, 38.570000, 142.570000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.BackCircleOutter = registerVal13
	local registerVal14 = CoD.AmmoWidget_ArrowFull.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 135.500000, 145.500000)
	registerVal14:setTopBottom(true, false, 65.570000, 75.570000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.ArrowFull = registerVal14
	local registerVal15 = CoD.CompassMinimapMap.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -0.500000, -1.500000)
	registerVal15:setTopBottom(true, true, 9.000000, -32.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.CompassMinimap = registerVal15
	local registerVal16 = CoD.CompassMinimapItems.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -0.500000, -1.500000)
	registerVal16:setTopBottom(true, true, 9.000000, -32.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.600000)
	registerVal2:addElement(registerVal16)
	registerVal2.CompassItems0 = registerVal16
	local registerVal17 = CoD.CompassMinimapItems.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, -0.500000, -1.500000)
	registerVal17:setTopBottom(true, true, 9.000000, -32.000000)
	registerVal17:setAlpha(0.750000)
	registerVal17:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.CompassItems = registerVal17
	local registerVal18 = CoD.CompassMinimapOverlay.new(arg0, arg1)
	registerVal18:setLeftRight(true, true, -0.500000, -1.500000)
	registerVal18:setTopBottom(true, true, 9.000000, -32.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.CompassOverlay = registerVal18
	local registerVal19 = CoD.HorizontalCompassGroupMPContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 19.900000, 267.010000)
	registerVal19:setTopBottom(true, false, 155.000000, 193.000000)
	registerVal19.HorizontalCompass:setAlpha(0.700000)
	registerVal2:addElement(registerVal19)
	registerVal2.HorizontalCompass = registerVal19
	local registerVal20 = CoD.Notification_SixthSense.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 15.500000, 265.500000)
	registerVal20:setTopBottom(true, false, 20.000000, 162.000000)
	local function __FUNC_1C75_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setRGB(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyScorestreakTargetColor", __FUNC_1C75_)
	registerVal2:addElement(registerVal20)
	registerVal2.NotificationSixthSense = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, true, 15.900000, -19.000000)
	registerVal21:setTopBottom(true, true, 22.000000, -43.000000)
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_smoke"))
	local function __FUNC_1D07_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal21:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "HUDItems", "smokeEffect", __FUNC_1D07_)
	registerVal2:addElement(registerVal21)
	registerVal2.smokeGrenadeEffect = registerVal21
	local registerVal22 = CoD.HorizontalCompassGroupMPContainer.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 19.900000, 267.010000)
	registerVal22:setTopBottom(true, false, 155.000000, 193.000000)
	registerVal22.HorizontalCompass:setAlpha(0.700000)
	registerVal2:addElement(registerVal22)
	registerVal2.HorizontalCompass0 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_1E5C_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowBack0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.CompassMinimapMap:completeAnimation()
		registerVal2.CompassMinimap:setZoom(20.000000)
		registerVal2.CompassMinimap.CompassMinimapMap:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompassItems0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompassItems:setAlpha(0.000000)
		registerVal2.CompassItems:setZoom(20.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CompassOverlay:setAlpha(0.000000)
		registerVal2.CompassOverlay:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.HorizontalCompass:completeAnimation()
		registerVal2.HorizontalCompass.HorizontalCompass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.NotificationSixthSense:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.smokeGrenadeEffect:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal24.DefaultClip = __FUNC_1E5C_
	local function __FUNC_2902_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_345A_(arg0, arg1)
			local function __FUNC_35B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_35B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35B0_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelMap:setAlpha(0.000000)
		__FUNC_345A_(registerVal3, {})
		local function __FUNC_3765_(arg0, arg1)
			local function __FUNC_38BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_38BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BC_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowBack0:setAlpha(0.000000)
		__FUNC_3765_(registerVal4, {})
		local function __FUNC_3A71_(arg0, arg1)
			local function __FUNC_3BC8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3BC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC8_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowBack:setAlpha(0.000000)
		__FUNC_3A71_(registerVal5, {})
		local function __FUNC_3D7D_(arg0, arg1)
			local function __FUNC_3F2F_(arg0, arg1)
				local function __FUNC_40DF_(arg0, arg1)
					local function __FUNC_428F_(arg0, arg1)
						local function __FUNC_441C_(arg0, arg1)
							local function __FUNC_45CF_(arg0, arg1)
								local function __FUNC_477F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 19.000000, 27.000000)
									arg0:setAlpha(0.400000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_477F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 69.280000, 77.280000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_477F_)
							end

							if arg1.interrupted then
								__FUNC_45CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 75.320000, 83.320000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45CF_)
						end

						if arg1.interrupted then
							__FUNC_441C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 83.270000, 91.270000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_441C_)
					end

					if arg1.interrupted then
						__FUNC_428F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 87.680000, 95.680000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_428F_)
				end

				if arg1.interrupted then
					__FUNC_40DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 94.070000, 102.070000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40DF_)
			end

			if arg1.interrupted then
				__FUNC_3F2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 95.940000, 103.940000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F2F_)
		end

		registerVal6:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 105.000000)
		registerVal2.BarTop:setAlpha(0.000000)
		__FUNC_3D7D_(registerVal6, {})
		local function __FUNC_499F_(arg0, arg1)
			local function __FUNC_4B4F_(arg0, arg1)
				local function __FUNC_4CFF_(arg0, arg1)
					local function __FUNC_4EAF_(arg0, arg1)
						local function __FUNC_503C_(arg0, arg1)
							local function __FUNC_51EF_(arg0, arg1)
								local function __FUNC_539F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 158.000000, 166.000000)
									arg0:setAlpha(0.400000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_539F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 118.680000, 126.680000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_539F_)
							end

							if arg1.interrupted then
								__FUNC_51EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 113.950000, 121.950000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51EF_)
						end

						if arg1.interrupted then
							__FUNC_503C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 107.740000, 115.740000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503C_)
					end

					if arg1.interrupted then
						__FUNC_4EAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 104.290000, 112.290000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EAF_)
				end

				if arg1.interrupted then
					__FUNC_4CFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 99.290000, 107.290000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CFF_)
			end

			if arg1.interrupted then
				__FUNC_4B4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 97.830000, 105.830000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B4F_)
		end

		registerVal7:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 105.000000)
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_499F_(registerVal7, {})
		local function __FUNC_55BF_(arg0, arg1)
			local function __FUNC_576F_(arg0, arg1)
				local function __FUNC_58FC_(arg0, arg1)
					local function __FUNC_5A8C_(arg0, arg1)
						local function __FUNC_5C1C_(arg0, arg1)
							local function __FUNC_5DCF_(arg0, arg1)
								local function __FUNC_5F7F_(arg0, arg1)
									local function __FUNC_610A_(arg0, arg1)
										local function __FUNC_6283_(arg0, arg1)
											local function __FUNC_641B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 131.340000, 152.670000)
												arg0:setTopBottom(true, false, 180.000000, 192.330000)
												arg0:setAlpha(0.700000)
												arg0:setZRot(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_641B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Back)
											arg0:setAlpha(0.560000)
											arg0:setZRot(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_641B_)
										end

										if arg1.interrupted then
											__FUNC_6283_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.510000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6283_)
									end

									if arg1.interrupted then
										__FUNC_610A_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 430.000000, false, true, CoD.TweenType.Back)
									arg0:setTopBottom(true, false, 180.000000, 192.330000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_610A_)
								end

								if arg1.interrupted then
									__FUNC_5F7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 181.310000, 193.640000)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F7F_)
							end

							if arg1.interrupted then
								__FUNC_5DCF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 171.890000, 184.220000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DCF_)
						end

						if arg1.interrupted then
							__FUNC_5C1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 160.980000, 173.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C1C_)
					end

					if arg1.interrupted then
						__FUNC_5A8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 154.980000, 167.310000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A8C_)
				end

				if arg1.interrupted then
					__FUNC_58FC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 134.780000, 147.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58FC_)
			end

			if arg1.interrupted then
				__FUNC_576F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 127.340000, 139.670000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_576F_)
		end

		registerVal8:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.BaseElement:setZRot(180.000000)
		__FUNC_55BF_(registerVal8, {})
		local function __FUNC_665F_(arg0, arg1)
			local function __FUNC_680F_(arg0, arg1)
				local function __FUNC_69BF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_69BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(-0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69BF_)
			end

			if arg1.interrupted then
				__FUNC_680F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_680F_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_665F_(registerVal9, {})
		local function __FUNC_6BE2_(arg0, arg1)
			local function __FUNC_6D93_(arg0, arg1)
				local function __FUNC_6F43_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6F43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(-0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F43_)
			end

			if arg1.interrupted then
				__FUNC_6D93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D93_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_6BE2_(registerVal10, {})
		local function __FUNC_7166_(arg0, arg1)
			local function __FUNC_7317_(arg0, arg1)
				local function __FUNC_74C7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_74C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(-0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74C7_)
			end

			if arg1.interrupted then
				__FUNC_7317_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7317_)
		end

		registerVal11:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_7166_(registerVal11, {})
		local function __FUNC_76EA_(arg0, arg1)
			local function __FUNC_789B_(arg0, arg1)
				local function __FUNC_7A4B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7A4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(-0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A4B_)
			end

			if arg1.interrupted then
				__FUNC_789B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_789B_)
		end

		registerVal12:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_76EA_(registerVal12, {})
		local function __FUNC_7C6E_(arg0, arg1)
			local function __FUNC_7DC4_(arg0, arg1)
				local function __FUNC_7F3F_(arg0, arg1)
					local function __FUNC_8094_(arg0, arg1)
						local function __FUNC_820F_(arg0, arg1)
							local function __FUNC_8364_(arg0, arg1)
								local function __FUNC_84DF_(arg0, arg1)
									local function __FUNC_868F_(arg0, arg1)
										local function __FUNC_87E4_(arg0, arg1)
											local function __FUNC_895F_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 88.500000, 195.500000)
												arg0:setTopBottom(true, false, 85.720000, 189.720000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_895F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_895F_)
										end

										if arg1.interrupted then
											__FUNC_87E4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87E4_)
									end

									if arg1.interrupted then
										__FUNC_868F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 85.720000, 189.720000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868F_)
								end

								if arg1.interrupted then
									__FUNC_84DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84DF_)
							end

							if arg1.interrupted then
								__FUNC_8364_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8364_)
						end

						if arg1.interrupted then
							__FUNC_820F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_820F_)
					end

					if arg1.interrupted then
						__FUNC_8094_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8094_)
				end

				if arg1.interrupted then
					__FUNC_7F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F3F_)
			end

			if arg1.interrupted then
				__FUNC_7DC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DC4_)
		end

		registerVal13:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 88.500000, 195.500000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 38.570000, 142.570000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		__FUNC_7C6E_(registerVal13, {})
		local function __FUNC_8B81_(arg0, arg1)
			local function __FUNC_8CD8_(arg0, arg1)
				local function __FUNC_8E53_(arg0, arg1)
					local function __FUNC_8FA8_(arg0, arg1)
						local function __FUNC_9123_(arg0, arg1)
							local function __FUNC_9278_(arg0, arg1)
								local function __FUNC_944D_(arg0, arg1)
									local function __FUNC_95A4_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 136.500000, 146.500000)
										arg0:setTopBottom(true, false, 142.570000, 152.570000)
										arg0:setAlpha(0.000000)
										arg0:setZRot(180.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_95A4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95A4_)
								end

								if arg1.interrupted then
									__FUNC_944D_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 142.570000, 152.570000)
								arg0:setAlpha(1.000000)
								arg0:setZRot(180.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_944D_)
							end

							if arg1.interrupted then
								__FUNC_9278_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9278_)
						end

						if arg1.interrupted then
							__FUNC_9123_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9123_)
					end

					if arg1.interrupted then
						__FUNC_8FA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FA8_)
				end

				if arg1.interrupted then
					__FUNC_8E53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E53_)
			end

			if arg1.interrupted then
				__FUNC_8CD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CD8_)
		end

		registerVal14:completeAnimation()
		registerVal2.ArrowFull:setLeftRight(true, false, 136.500000, 146.500000)
		registerVal2.ArrowFull:setTopBottom(true, false, 65.570000, 75.570000)
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.ArrowFull:setZRot(0.000000)
		__FUNC_8B81_(registerVal14, {})
		local function __FUNC_97EB_(arg0, arg1)
			local function __FUNC_9940_(arg0, arg1)
				local function __FUNC_9ABA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
						arg0.CompassMinimapMap:beginAnimation("subkeyframe", 129.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setZoom(0.000000)
					arg0.CompassMinimapMap:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9ABA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setZoom(13.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9ABA_)
			end

			if arg1.interrupted then
				__FUNC_9940_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9940_)
		end

		registerVal15:completeAnimation()
		registerVal15.CompassMinimapMap:completeAnimation()
		registerVal2.CompassMinimap:setZoom(20.000000)
		registerVal2.CompassMinimap.CompassMinimapMap:setAlpha(0.000000)
		__FUNC_97EB_(registerVal15, {})
		local function __FUNC_9D0B_(arg0, arg1)
			local function __FUNC_9E60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9E60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E60_)
		end

		registerVal16:completeAnimation()
		registerVal2.CompassItems0:setAlpha(0.000000)
		__FUNC_9D0B_(registerVal16, {})
		local function __FUNC_A015_(arg0, arg1)
			local function __FUNC_A16C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.750000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A16C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A16C_)
		end

		registerVal17:completeAnimation()
		registerVal2.CompassItems:setAlpha(0.000000)
		registerVal2.CompassItems:setZoom(20.000000)
		__FUNC_A015_(registerVal17, {})
		local function __FUNC_A343_(arg0, arg1)
			local function __FUNC_A498_(arg0, arg1)
				local function __FUNC_A635_(arg0, arg1)
					local function __FUNC_A7AE_(arg0, arg1)
						local function __FUNC_A949_(arg0, arg1)
							local function __FUNC_AAC2_(arg0, arg1)
								local function __FUNC_AC5D_(arg0, arg1)
									local function __FUNC_ADD6_(arg0, arg1)
										local function __FUNC_AF71_(arg0, arg1)
											local function __FUNC_B0EA_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_B0EA_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setZoom(1.540000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0EA_)
										end

										if arg1.interrupted then
											__FUNC_AF71_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:setZoom(4.620000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF71_)
									end

									if arg1.interrupted then
										__FUNC_ADD6_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:setZoom(6.150000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADD6_)
								end

								if arg1.interrupted then
									__FUNC_AC5D_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:setZoom(9.230000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC5D_)
							end

							if arg1.interrupted then
								__FUNC_AAC2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(10.770000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAC2_)
						end

						if arg1.interrupted then
							__FUNC_A949_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setZoom(13.850000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A949_)
					end

					if arg1.interrupted then
						__FUNC_A7AE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(15.380000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7AE_)
				end

				if arg1.interrupted then
					__FUNC_A635_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:setZoom(18.460000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A635_)
			end

			if arg1.interrupted then
				__FUNC_A498_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A498_)
		end

		registerVal18:completeAnimation()
		registerVal2.CompassOverlay:setAlpha(0.000000)
		registerVal2.CompassOverlay:setZoom(20.000000)
		__FUNC_A343_(registerVal18, {})
		local function __FUNC_B2BF_(arg0, arg1)
			local function __FUNC_B414_(arg0, arg1)
				local function __FUNC_B60B_(arg0, arg1)
					local function __FUNC_B760_(arg0, arg1)
						local function __FUNC_B957_(arg0, arg1)
							local function __FUNC_BAAC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0.HorizontalCompass:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0.HorizontalCompass:setAlpha(0.700000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_BAAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAAC_)
						end

						if arg1.interrupted then
							__FUNC_B957_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.HorizontalCompass:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0.HorizontalCompass:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B957_)
					end

					if arg1.interrupted then
						__FUNC_B760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B760_)
				end

				if arg1.interrupted then
					__FUNC_B60B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.HorizontalCompass:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.HorizontalCompass:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B60B_)
			end

			if arg1.interrupted then
				__FUNC_B414_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1090.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B414_)
		end

		registerVal19:completeAnimation()
		registerVal19.HorizontalCompass:completeAnimation()
		registerVal2.HorizontalCompass.HorizontalCompass:setAlpha(0.000000)
		__FUNC_B2BF_(registerVal19, {})
		local function __FUNC_BCDD_(arg0, arg1)
			local function __FUNC_BE34_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BE34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE34_)
		end

		registerVal20:completeAnimation()
		registerVal2.NotificationSixthSense:setAlpha(0.000000)
		__FUNC_BCDD_(registerVal20, {})
		local function __FUNC_BFE9_(arg0, arg1)
			local function __FUNC_C140_(arg0, arg1)
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
				__FUNC_C140_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C140_)
		end

		registerVal21:completeAnimation()
		registerVal2.smokeGrenadeEffect:setAlpha(0.000000)
		__FUNC_BFE9_(registerVal21, {})
	end

	registerVal24.HudStart = __FUNC_2902_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_C2F5_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowBack0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowBack:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 19.000000, 27.000000)
		registerVal2.BarTop:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 158.000000, 166.000000)
		registerVal2.BarBase:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 180.000000, 192.330000)
		registerVal2.BaseElement:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot1:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot2:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot3:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot4:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.CompassMinimapMap:completeAnimation()
		registerVal2.CompassMinimap:setAlpha(1.000000)
		registerVal2.CompassMinimap:setZoom(0.000000)
		registerVal2.CompassMinimap.CompassMinimapMap:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.CompassItems0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompassItems:setAlpha(0.750000)
		registerVal2.CompassItems:setZoom(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.CompassOverlay:setAlpha(1.000000)
		registerVal2.CompassOverlay:setZoom(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal19.HorizontalCompass:completeAnimation()
		registerVal2.HorizontalCompass.HorizontalCompass:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.NotificationSixthSense:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.smokeGrenadeEffect:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
	end

	registerVal24.DefaultClip = __FUNC_C2F5_
	local function __FUNC_CE0D_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_D7E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelMap:setAlpha(1.000000)
		__FUNC_D7E6_(registerVal3, {})
		local function __FUNC_D999_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GlowBack0:setAlpha(0.400000)
		__FUNC_D999_(registerVal4, {})
		local function __FUNC_DB4D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GlowBack:setAlpha(0.600000)
		__FUNC_DB4D_(registerVal5, {})
		local function __FUNC_DD01_(arg0, arg1)
			local function __FUNC_DEB1_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 108.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DEB1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 108.000000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEB1_)
		end

		registerVal6:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 19.000000, 27.000000)
		registerVal2.BarTop:setAlpha(0.400000)
		__FUNC_DD01_(registerVal6, {})
		local function __FUNC_E0D5_(arg0, arg1)
			local function __FUNC_E285_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 108.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E285_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 108.000000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E285_)
		end

		registerVal7:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 158.000000, 166.000000)
		registerVal2.BarBase:setAlpha(0.400000)
		__FUNC_E0D5_(registerVal7, {})
		local function __FUNC_E4A9_(arg0, arg1)
			local function __FUNC_E659_(arg0, arg1)
				local function __FUNC_E7D3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 131.340000, 152.670000)
					arg0:setTopBottom(true, false, 106.000000, 118.330000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(180.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E7D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7D3_)
			end

			if arg1.interrupted then
				__FUNC_E659_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 106.000000, 118.330000)
			arg0:setAlpha(0.530000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E659_)
		end

		registerVal8:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 180.000000, 192.330000)
		registerVal2.BaseElement:setAlpha(0.700000)
		registerVal2.BaseElement:setZRot(0.000000)
		__FUNC_E4A9_(registerVal8, {})
		local function __FUNC_EA17_(arg0, arg1)
			local function __FUNC_EBC8_(arg0, arg1)
				local function __FUNC_ED56_(arg0, arg1)
					local function __FUNC_EF07_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EF07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF07_)
				end

				if arg1.interrupted then
					__FUNC_ED56_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED56_)
			end

			if arg1.interrupted then
				__FUNC_EBC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBC8_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot1:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_EA17_(registerVal9, {})
		local function __FUNC_F129_(arg0, arg1)
			local function __FUNC_F2DC_(arg0, arg1)
				local function __FUNC_F46A_(arg0, arg1)
					local function __FUNC_F61B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F61B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F61B_)
				end

				if arg1.interrupted then
					__FUNC_F46A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F46A_)
			end

			if arg1.interrupted then
				__FUNC_F2DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2DC_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot2:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_F129_(registerVal10, {})
		local function __FUNC_F83D_(arg0, arg1)
			local function __FUNC_F9F0_(arg0, arg1)
				local function __FUNC_FB7E_(arg0, arg1)
					local function __FUNC_FD2F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_FD2F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD2F_)
				end

				if arg1.interrupted then
					__FUNC_FB7E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB7E_)
			end

			if arg1.interrupted then
				__FUNC_F9F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot3:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_F83D_(registerVal11, {})
		local function __FUNC_FF51_(arg0, arg1)
			local function __FUNC_10104_(arg0, arg1)
				local function __FUNC_10292_(arg0, arg1)
					local function __FUNC_10443_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_10443_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10443_)
				end

				if arg1.interrupted then
					__FUNC_10292_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10292_)
			end

			if arg1.interrupted then
				__FUNC_10104_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10104_)
		end

		registerVal12:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot4:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_FF51_(registerVal12, {})
		local function __FUNC_10665_(arg0, arg1)
			local function __FUNC_107BC_(arg0, arg1)
				local function __FUNC_10937_(arg0, arg1)
					local function __FUNC_10A8C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_10A8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A8C_)
				end

				if arg1.interrupted then
					__FUNC_10937_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10937_)
			end

			if arg1.interrupted then
				__FUNC_107BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107BC_)
		end

		registerVal14:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		__FUNC_10665_(registerVal14, {})
		local function __FUNC_10C41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
				arg0.CompassMinimapMap:beginAnimation("subkeyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0.CompassMinimapMap:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal15.CompassMinimapMap:completeAnimation()
		registerVal2.CompassMinimap.CompassMinimapMap:setAlpha(1.000000)
		__FUNC_10C41_(registerVal15, {})
		local function __FUNC_10E71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.CompassItems0:setAlpha(0.600000)
		__FUNC_10E71_(registerVal16, {})
		local function __FUNC_11025_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.CompassItems:setAlpha(0.750000)
		__FUNC_11025_(registerVal17, {})
		local function __FUNC_111D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.CompassOverlay:setAlpha(1.000000)
		__FUNC_111D9_(registerVal18, {})
		local function __FUNC_1138D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
				arg0.HorizontalCompass:beginAnimation("subkeyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0.HorizontalCompass:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal19.HorizontalCompass:completeAnimation()
		registerVal2.HorizontalCompass.HorizontalCompass:setAlpha(0.700000)
		__FUNC_1138D_(registerVal19, {})
		local function __FUNC_115BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.NotificationSixthSense:setAlpha(1.000000)
		__FUNC_115BD_(registerVal20, {})
		local function __FUNC_11771_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.smokeGrenadeEffect:setAlpha(1.000000)
		__FUNC_11771_(registerVal21, {})
	end

	registerVal24.DefaultState = __FUNC_CE0D_
	registerVal23.HudStart = registerVal24
	registerVal24 = {}
	local function __FUNC_11925_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal24.DefaultClip = __FUNC_11925_
	registerVal23.HudPause = registerVal24
	registerVal2.clipsPerState = registerVal23
	local function __FUNC_11986_(arg0)
		arg0.PanelMap:close()
		arg0.BarTop:close()
		arg0.BarBase:close()
		arg0.BaseElement:close()
		arg0.Dot1:close()
		arg0.Dot2:close()
		arg0.Dot3:close()
		arg0.Dot4:close()
		arg0.BackCircleOutter:close()
		arg0.ArrowFull:close()
		arg0.CompassMinimap:close()
		arg0.CompassItems0:close()
		arg0.CompassItems:close()
		arg0.CompassOverlay:close()
		arg0.HorizontalCompass:close()
		arg0.NotificationSixthSense:close()
		arg0.HorizontalCompass0:close()
		arg0.smokeGrenadeEffect:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11986_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CompassGroupMP.new = __FUNC_63B_
