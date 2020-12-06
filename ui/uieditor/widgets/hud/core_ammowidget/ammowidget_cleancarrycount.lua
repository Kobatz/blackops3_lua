-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_CleanCarryIcon")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_CleanCarryCountContainer")
local function __FUNC_294_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "hudItems.cleanCarryCount")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_CleanCarryCount = registerVal2
local function __FUNC_356_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_294_ then
		__FUNC_294_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_CleanCarryCount)
	registerVal2.id = "AmmoWidget_CleanCarryCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 76.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 97.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -14.800000, 92.800000)
	registerVal3:setTopBottom(true, false, -12.000000, 97.000000)
	registerVal3:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
	registerVal3:setAlpha(0.410000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelGlow = registerVal3
	local registerVal4 = CoD.AmmoWidget_CleanCarryIcon.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -3.000000, 79.000000)
	registerVal4:setTopBottom(true, false, 7.380000, 89.380000)
	registerVal2:addElement(registerVal4)
	registerVal2.AmmoWidgetCleanCarryIcon = registerVal4
	local registerVal5 = CoD.AmmoWidget_CleanCarryCountContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 24.000000, 54.000000)
	registerVal5:setTopBottom(true, false, 34.380000, 68.380000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.200000, 0.500000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 10.000000, -5.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 4.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.CarriedTagCount:setRGB(0.390000, 0.170000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.AmmoWidgetCleanCarryCountContainer = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -15.000000, 15.000000)
	registerVal6:setTopBottom(true, false, 33.380000, 67.380000)
	registerVal6:setRGB(0.270000, 0.180000, 0.180000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setLetterSpacing(-4.000000)
	local function __FUNC_1089_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "cleanCarryCount", __FUNC_1089_)
	registerVal2:addElement(registerVal6)
	registerVal2.CarriedTagCount = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, false, -38.000000, 38.000000)
	registerVal7:setTopBottom(true, false, 41.380000, 59.380000)
	registerVal7:setRGB(0.270000, 0.180000, 0.180000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setText(LocalizeToUpperString("MP_CLEAN_CARRY_FULL"))
	registerVal7:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.FullLabel = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1142_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1559_(arg0, arg1)
			local function __FUNC_16D3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -15.800000, 91.800000)
				arg0:setTopBottom(true, false, -8.500000, 100.500000)
				arg0:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_16D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D3_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setLeftRight(true, false, -15.800000, 91.800000)
		registerVal2.PanelGlow:setTopBottom(true, false, -8.500000, 100.500000)
		registerVal2.PanelGlow:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
		registerVal2.PanelGlow:setAlpha(0.600000)
		__FUNC_1559_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_1142_
	local function __FUNC_19A9_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1DB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, -15.800000, 91.800000)
			arg0:setTopBottom(true, false, -8.500000, 100.500000)
			arg0:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setLeftRight(true, false, -15.800000, 91.800000)
		registerVal2.PanelGlow:setTopBottom(true, false, -8.500000, 100.500000)
		registerVal2.PanelGlow:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
		registerVal2.PanelGlow:setAlpha(0.600000)
		__FUNC_1DB1_(registerVal3, {})
		local function __FUNC_2089_(arg0, arg1)
			local function __FUNC_2203_(arg0, arg1)
				local function __FUNC_237B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_237B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237B_)
			end

			if arg1.interrupted then
				__FUNC_2203_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2203_)
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(1.000000)
		__FUNC_2089_(registerVal4, {})
		local function __FUNC_252D_(arg0, arg1)
			local function __FUNC_26A7_(arg0, arg1)
				local function __FUNC_281F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_281F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_281F_)
			end

			if arg1.interrupted then
				__FUNC_26A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A7_)
		end

		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(1.000000)
		__FUNC_252D_(registerVal5, {})
		local function __FUNC_29D1_(arg0, arg1)
			local function __FUNC_2B4B_(arg0, arg1)
				local function __FUNC_2CC3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2CC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC3_)
			end

			if arg1.interrupted then
				__FUNC_2B4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4B_)
		end

		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.800000)
		__FUNC_29D1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "NoCount"
	end

	registerVal9.NoCount = __FUNC_19A9_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_2E75_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2E75_
	registerVal8.Hide = registerVal9
	registerVal9 = {}
	local function __FUNC_30FF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_30FF_
	local function __FUNC_3387_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3603_(arg0, arg1)
			local function __FUNC_377B_(arg0, arg1)
				local function __FUNC_38F3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_38F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F3_)
			end

			if arg1.interrupted then
				__FUNC_377B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377B_)
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(0.000000)
		__FUNC_3603_(registerVal4, {})
		local function __FUNC_3AA5_(arg0, arg1)
			local function __FUNC_3C1F_(arg0, arg1)
				local function __FUNC_3D97_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3D97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D97_)
			end

			if arg1.interrupted then
				__FUNC_3C1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C1F_)
		end

		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(0.000000)
		__FUNC_3AA5_(registerVal5, {})
		local function __FUNC_3F49_(arg0, arg1)
			local function __FUNC_40C3_(arg0, arg1)
				local function __FUNC_423B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_423B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_423B_)
			end

			if arg1.interrupted then
				__FUNC_40C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40C3_)
		end

		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.000000)
		__FUNC_3F49_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultState = __FUNC_3387_
	registerVal8.NoCount = registerVal9
	registerVal9 = {}
	local function __FUNC_43ED_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4827_(arg0, arg1)
			local function __FUNC_499F_(arg0, arg1)
				local function __FUNC_4B17_(arg0, arg1)
					local function __FUNC_4C8F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 839.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -15.800000, 91.800000)
						arg0:setTopBottom(true, false, -8.500000, 100.500000)
						arg0:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
						arg0:setAlpha(0.600000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4C8F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(0.100000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C8F_)
				end

				if arg1.interrupted then
					__FUNC_4B17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B17_)
			end

			if arg1.interrupted then
				__FUNC_499F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_499F_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setLeftRight(true, false, -15.800000, 91.800000)
		registerVal2.PanelGlow:setTopBottom(true, false, -8.500000, 100.500000)
		registerVal2.PanelGlow:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
		registerVal2.PanelGlow:setAlpha(0.600000)
		__FUNC_4827_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_4F65_(arg0, arg1)
			local function __FUNC_50BC_(arg0, arg1)
				local function __FUNC_5237_(arg0, arg1)
					local function __FUNC_538C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_538C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_538C_)
				end

				if arg1.interrupted then
					__FUNC_5237_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5237_)
			end

			if arg1.interrupted then
				__FUNC_50BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1440.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50BC_)
		end

		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(1.000000)
		__FUNC_4F65_(registerVal5, {})
		local function __FUNC_5541_(arg0, arg1)
			local function __FUNC_5698_(arg0, arg1)
				local function __FUNC_5813_(arg0, arg1)
					local function __FUNC_5968_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5968_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5968_)
				end

				if arg1.interrupted then
					__FUNC_5813_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5813_)
			end

			if arg1.interrupted then
				__FUNC_5698_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1440.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5698_)
		end

		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.800000)
		__FUNC_5541_(registerVal6, {})
		local function __FUNC_5B1D_(arg0, arg1)
			local function __FUNC_5C74_(arg0, arg1)
				local function __FUNC_5DEF_(arg0, arg1)
					local function __FUNC_5F44_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setRGB(0.270000, 0.180000, 0.180000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5F44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1439.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F44_)
				end

				if arg1.interrupted then
					__FUNC_5DEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DEF_)
			end

			if arg1.interrupted then
				__FUNC_5C74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1440.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C74_)
		end

		registerVal7:completeAnimation()
		registerVal2.FullLabel:setRGB(0.270000, 0.180000, 0.180000)
		registerVal2.FullLabel:setAlpha(0.000000)
		__FUNC_5B1D_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_43ED_
	local function __FUNC_6127_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_652D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, -15.800000, 91.800000)
			arg0:setTopBottom(true, false, -8.500000, 100.500000)
			arg0:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelGlow:setLeftRight(true, false, -15.800000, 91.800000)
		registerVal2.PanelGlow:setTopBottom(true, false, -8.500000, 100.500000)
		registerVal2.PanelGlow:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
		registerVal2.PanelGlow:setAlpha(0.600000)
		__FUNC_652D_(registerVal3, {})
		local function __FUNC_6805_(arg0, arg1)
			local function __FUNC_697F_(arg0, arg1)
				local function __FUNC_6AF7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6AF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AF7_)
			end

			if arg1.interrupted then
				__FUNC_697F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_697F_)
		end

		registerVal4:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryIcon:setAlpha(1.000000)
		__FUNC_6805_(registerVal4, {})
		local function __FUNC_6CA9_(arg0, arg1)
			local function __FUNC_6E23_(arg0, arg1)
				local function __FUNC_6F9B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6F9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F9B_)
			end

			if arg1.interrupted then
				__FUNC_6E23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E23_)
		end

		registerVal5:completeAnimation()
		registerVal2.AmmoWidgetCleanCarryCountContainer:setAlpha(1.000000)
		__FUNC_6CA9_(registerVal5, {})
		local function __FUNC_714D_(arg0, arg1)
			local function __FUNC_72C7_(arg0, arg1)
				local function __FUNC_743F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_743F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_743F_)
			end

			if arg1.interrupted then
				__FUNC_72C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72C7_)
		end

		registerVal6:completeAnimation()
		registerVal2.CarriedTagCount:setAlpha(0.800000)
		__FUNC_714D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FullLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "NoCount"
	end

	registerVal9.NoCount = __FUNC_6127_
	registerVal8.Full = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hide"
	local function __FUNC_75F1_(arg0, arg1, arg2)
		local registerVal3 = IsGameTypeEqualToString("clean")
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_75F1_
	local registerVal12 = {}
	registerVal12.stateName = "NoCount"
	local function __FUNC_7660_(arg0, arg2, arg3)
		local registerVal3 = IsGameTypeEqualToString("clean")
		if registerVal3 then
			registerVal3 = IsModelValueEqualTo(arg1, "hudItems.cleanCarryCount", 0.000000)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_7660_
	local registerVal13 = {}
	registerVal13.stateName = "Full"
	local function __FUNC_772C_(arg0, arg2, arg3)
		return IsFractureCountMax(arg1)
	end

	registerVal13.condition = __FUNC_772C_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "hudItems.cleanCarryCount")
	local function __FUNC_7784_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cleanCarryCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_7784_)
	local function __FUNC_78B2_(arg0)
		arg0.AmmoWidgetCleanCarryIcon:close()
		arg0.AmmoWidgetCleanCarryCountContainer:close()
		arg0.CarriedTagCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_78B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_CleanCarryCount.new = __FUNC_356_
