-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GroundAssault_Eyes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_GroundAssaultWidget = registerVal1
function CoD.CallingCards_GroundAssaultWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_GroundAssaultWidget)
	registerVal2.id = "CallingCards_GroundAssaultWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_goundassault_bg2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 2.800000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Flipbook = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_goundassault_bglights"))
	registerVal2:addElement(registerVal4)
	registerVal2.BackLights = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_goundassault_man"))
	registerVal2:addElement(registerVal5)
	registerVal2.Man = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 300.600000, 863.210000)
	registerVal6:setTopBottom(true, false, -173.660000, 457.080000)
	registerVal6:setRGB(0.000000, 0.220000, 1.000000)
	registerVal6:setZRot(80.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.GlowBlue = registerVal6
	local registerVal7 = CoD.CallingCards_GroundAssault_Eyes.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 228.600000, 234.780000)
	registerVal7:setTopBottom(true, false, -24.930000, 51.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CallingCardsGroundAssaultEyes = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -354.410000, 208.210000)
	registerVal8:setTopBottom(true, false, -295.660000, 335.080000)
	registerVal8:setRGB(1.000000, 0.380000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZRot(80.000000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.GlowOrange = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_B8A_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_D45_(arg0, arg1)
			local function __FUNC_EBF_(arg0, arg1)
				local function __FUNC_1037_(arg0, arg1)
					local function __FUNC_118C_(arg0, arg1)
						local function __FUNC_1307_(arg0, arg1)
							local function __FUNC_147F_(arg0, arg1)
								local function __FUNC_15F7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_15F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F7_)
							end

							if arg1.interrupted then
								__FUNC_147F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147F_)
						end

						if arg1.interrupted then
							__FUNC_1307_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1307_)
					end

					if arg1.interrupted then
						__FUNC_118C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118C_)
				end

				if arg1.interrupted then
					__FUNC_1037_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1037_)
			end

			if arg1.interrupted then
				__FUNC_EBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBF_)
		end

		registerVal4:completeAnimation()
		registerVal2.BackLights:setAlpha(0.000000)
		__FUNC_D45_(registerVal4, {})
		local function __FUNC_17A9_(arg0, arg1)
			local function __FUNC_1923_(arg0, arg1)
				local function __FUNC_1A9B_(arg0, arg1)
					local function __FUNC_1BF0_(arg0, arg1)
						local function __FUNC_1D6B_(arg0, arg1)
							local function __FUNC_1EE3_(arg0, arg1)
								local function __FUNC_205B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_205B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_205B_)
							end

							if arg1.interrupted then
								__FUNC_1EE3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EE3_)
						end

						if arg1.interrupted then
							__FUNC_1D6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D6B_)
					end

					if arg1.interrupted then
						__FUNC_1BF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BF0_)
				end

				if arg1.interrupted then
					__FUNC_1A9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A9B_)
			end

			if arg1.interrupted then
				__FUNC_1923_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1923_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowBlue:setAlpha(0.000000)
		__FUNC_17A9_(registerVal6, {})
		local function __FUNC_220D_(arg0, arg1)
			local function __FUNC_2364_(arg0, arg1)
				local function __FUNC_24DF_(arg0, arg1)
					local function __FUNC_2657_(arg0, arg1)
						local function __FUNC_27CF_(arg0, arg1)
							local function __FUNC_2947_(arg0, arg1)
								local function __FUNC_2ABF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2ABF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.750000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ABF_)
							end

							if arg1.interrupted then
								__FUNC_2947_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2947_)
						end

						if arg1.interrupted then
							__FUNC_27CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.840000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CF_)
					end

					if arg1.interrupted then
						__FUNC_2657_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2657_)
				end

				if arg1.interrupted then
					__FUNC_24DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24DF_)
			end

			if arg1.interrupted then
				__FUNC_2364_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2364_)
		end

		registerVal8:completeAnimation()
		registerVal2.GlowOrange:setAlpha(0.000000)
		__FUNC_220D_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_B8A_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_2C71_(arg0)
		arg0.CallingCardsGroundAssaultEyes:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C71_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

