-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_ChangedIndicator")
require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local function __FUNC_268_(arg0, arg1)
	local function __FUNC_2D8_(arg0, arg1)
		if arg0.currentState == "NavButton" then
			local registerVal4 = arg0.buttonText:getTextWidth()
		else
			registerVal4 = arg0.text:getTextWidth()
		end
		return (registerVal4 + 50.000000)
	end

	arg0.getWidthInList = __FUNC_2D8_
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.paintshopTabWidget = registerVal2
local function __FUNC_3C2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.paintshopTabWidget)
	registerVal2.id = "paintshopTabWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -5.000000, 5.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttontabfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.470588, 0.500000, 0.416667, 0.333333)
	registerVal3:setupNineSliceShader(96.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabFocus = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.039604, 0.190476, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETabIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -82.000000, 104.000000)
	registerVal5:setTopBottom(true, false, -23.290000, 58.120000)
	registerVal5:setRGB(0.910000, 1.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow2 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -9.000000, 12.000000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_18B9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "tabName", true, __FUNC_18B9_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -9.000000, 12.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(2.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1972_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "tabName", true, __FUNC_1972_)
	registerVal2:addElement(registerVal7)
	registerVal2.textDark = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setRGB(1.000000, 0.380000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.glitch = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setRGB(1.000000, 0.380000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_effect_glitches_menu8"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.glitch2 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal10:setTopBottom(false, false, -14.000000, 15.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_1A2A_)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonText = registerVal10
	local registerVal11 = CoD.GameSettings_ChangedIndicator.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 4.000000, 34.000000)
	registerVal11:setTopBottom(true, false, -15.000000, 15.000000)
	local function __FUNC_1AE2_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1AE2_)
	registerVal2:addElement(registerVal11)
	registerVal2.GameSettingsChangedIndicator = registerVal11
	local registerVal12 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -22.000000, -4.000000)
	registerVal12:setTopBottom(true, false, -5.000000, 13.000000)
	local function __FUNC_1B32_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1B32_)
	local function __FUNC_1B82_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "breadcrumbCount", true, __FUNC_1B82_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Visible"
	local function __FUNC_1C59_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "breadcrumbCount", 0.000000)
	end

	registerVal16.condition = __FUNC_1C59_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_1CE3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "breadcrumbCount"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "breadcrumbCount", true, __FUNC_1CE3_)
	registerVal2:addElement(registerVal12)
	registerVal2.breadcrumbCount = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1E05_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.textDark:setTopBottom(false, false, -9.000000, 12.000000)
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_1E05_
	local function __FUNC_21E9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal14.Active = __FUNC_21E9_
	local function __FUNC_24EA_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_27DB_(arg0, arg1)
			local function __FUNC_2953_(arg0, arg1)
				local function __FUNC_2ACB_(arg0, arg1)
					local function __FUNC_2C43_(arg0, arg1)
						local function __FUNC_2DBB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2DBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBB_)
					end

					if arg1.interrupted then
						__FUNC_2C43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C43_)
				end

				if arg1.interrupted then
					__FUNC_2ACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ACB_)
			end

			if arg1.interrupted then
				__FUNC_2953_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2953_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.370000)
		__FUNC_27DB_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2F6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_2F6D_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_3121_(arg0, arg1)
			local function __FUNC_329B_(arg0, arg1)
				local function __FUNC_3413_(arg0, arg1)
					local function __FUNC_3568_(arg0, arg1)
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
						__FUNC_3568_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3568_)
				end

				if arg1.interrupted then
					__FUNC_3413_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3413_)
			end

			if arg1.interrupted then
				__FUNC_329B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_329B_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		__FUNC_3121_(registerVal7, {})
		local function __FUNC_371D_(arg0, arg1)
			local function __FUNC_3874_(arg0, arg1)
				local function __FUNC_39EF_(arg0, arg1)
					local function __FUNC_3B67_(arg0, arg1)
						local function __FUNC_3CBC_(arg0, arg1)
							local function __FUNC_3E37_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3E37_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E37_)
						end

						if arg1.interrupted then
							__FUNC_3CBC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CBC_)
					end

					if arg1.interrupted then
						__FUNC_3B67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B67_)
				end

				if arg1.interrupted then
					__FUNC_39EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39EF_)
			end

			if arg1.interrupted then
				__FUNC_3874_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3874_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_371D_(registerVal8, {})
		local function __FUNC_3FE9_(arg0, arg1)
			local function __FUNC_4140_(arg0, arg1)
				local function __FUNC_42BB_(arg0, arg1)
					local function __FUNC_4410_(arg0, arg1)
						local function __FUNC_458B_(arg0, arg1)
							local function __FUNC_46E0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_46E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46E0_)
						end

						if arg1.interrupted then
							__FUNC_458B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458B_)
					end

					if arg1.interrupted then
						__FUNC_4410_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4410_)
				end

				if arg1.interrupted then
					__FUNC_42BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42BB_)
			end

			if arg1.interrupted then
				__FUNC_4140_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4140_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3FE9_(registerVal9, {})
	end

	registerVal14.GainActive = __FUNC_24EA_
	local function __FUNC_4895_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4B64_(arg0, arg1)
			local function __FUNC_4CDF_(arg0, arg1)
				local function __FUNC_4E57_(arg0, arg1)
					local function __FUNC_4FCF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4FCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FCF_)
				end

				if arg1.interrupted then
					__FUNC_4E57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E57_)
			end

			if arg1.interrupted then
				__FUNC_4CDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CDF_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		__FUNC_4B64_(registerVal3, {})
		local function __FUNC_5181_(arg0, arg1)
			local function __FUNC_52D8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_52D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52D8_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		__FUNC_5181_(registerVal4, {})
		local function __FUNC_548D_(arg0, arg1)
			local function __FUNC_5607_(arg0, arg1)
				local function __FUNC_577F_(arg0, arg1)
					local function __FUNC_58F7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_58F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58F7_)
				end

				if arg1.interrupted then
					__FUNC_577F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_577F_)
			end

			if arg1.interrupted then
				__FUNC_5607_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5607_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_548D_(registerVal5, {})
		local function __FUNC_5AA9_(arg0, arg1)
			local function __FUNC_5C00_(arg0, arg1)
				local function __FUNC_5D7B_(arg0, arg1)
					local function __FUNC_5EF3_(arg0, arg1)
						local function __FUNC_606B_(arg0, arg1)
							local function __FUNC_61E3_(arg0, arg1)
								local function __FUNC_635B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.700000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_635B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_635B_)
							end

							if arg1.interrupted then
								__FUNC_61E3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.240000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61E3_)
						end

						if arg1.interrupted then
							__FUNC_606B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_606B_)
					end

					if arg1.interrupted then
						__FUNC_5EF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EF3_)
				end

				if arg1.interrupted then
					__FUNC_5D7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D7B_)
			end

			if arg1.interrupted then
				__FUNC_5C00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C00_)
		end

		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_5AA9_(registerVal6, {})
		local function __FUNC_650D_(arg0, arg1)
			local function __FUNC_6664_(arg0, arg1)
				local function __FUNC_67DF_(arg0, arg1)
					local function __FUNC_6957_(arg0, arg1)
						local function __FUNC_6ACF_(arg0, arg1)
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
							__FUNC_6ACF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6ACF_)
					end

					if arg1.interrupted then
						__FUNC_6957_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6957_)
				end

				if arg1.interrupted then
					__FUNC_67DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67DF_)
			end

			if arg1.interrupted then
				__FUNC_6664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6664_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		__FUNC_650D_(registerVal7, {})
		local function __FUNC_6C81_(arg0, arg1)
			local function __FUNC_6DD8_(arg0, arg1)
				local function __FUNC_6F30_(arg0, arg1)
					local function __FUNC_70AB_(arg0, arg1)
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
						__FUNC_70AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70AB_)
				end

				if arg1.interrupted then
					__FUNC_6F30_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F30_)
			end

			if arg1.interrupted then
				__FUNC_6DD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DD8_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6C81_(registerVal8, {})
		local function __FUNC_725D_(arg0, arg1)
			local function __FUNC_73D7_(arg0, arg1)
				local function __FUNC_752C_(arg0, arg1)
					local function __FUNC_76A7_(arg0, arg1)
						local function __FUNC_77FC_(arg0, arg1)
							local function __FUNC_7977_(arg0, arg1)
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
								__FUNC_7977_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.340000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7977_)
						end

						if arg1.interrupted then
							__FUNC_77FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77FC_)
					end

					if arg1.interrupted then
						__FUNC_76A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76A7_)
				end

				if arg1.interrupted then
					__FUNC_752C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_752C_)
			end

			if arg1.interrupted then
				__FUNC_73D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73D7_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_725D_(registerVal9, {})
	end

	registerVal14.LoseActive = __FUNC_4895_
	local function __FUNC_7B29_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.Over = __FUNC_7B29_
	local function __FUNC_7E8C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_81E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_81E7_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.GainOver = __FUNC_7E8C_
	local function __FUNC_8399_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_86F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.800000)
		__FUNC_86F8_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.LoseOver = __FUNC_8399_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_88AD_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.textDark:setTopBottom(false, false, -9.000000, 12.000000)
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_88AD_
	registerVal13.NavButton = registerVal14
	registerVal14 = {}
	local function __FUNC_8C96_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_8C96_
	registerVal13.NavButtonHiddenPrompt = registerVal14
	registerVal14 = {}
	local function __FUNC_8FEE_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_8FEE_
	registerVal13.Disabled = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "NavButton"
	local function __FUNC_934B_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_934B_
	local registerVal17 = {}
	registerVal17.stateName = "NavButtonHiddenPrompt"
	local function __FUNC_93CC_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_93CC_
	local registerVal18 = {}
	registerVal18.stateName = "Disabled"
	local function __FUNC_9454_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal18.condition = __FUNC_9454_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_94A8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "tabIcon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_94A8_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_95C5_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_95C5_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "LastInput")
	local function __FUNC_964F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_964F_)
	local function __FUNC_976B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_976B_)
	local function __FUNC_9886_(arg0)
		arg0.GameSettingsChangedIndicator:close()
		arg0.breadcrumbCount:close()
		arg0.text:close()
		arg0.textDark:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9886_)
	if __FUNC_268_ then
		__FUNC_268_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.paintshopTabWidget.new = __FUNC_3C2_
