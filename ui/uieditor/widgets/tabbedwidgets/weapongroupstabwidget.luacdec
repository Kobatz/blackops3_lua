-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumbCount")
local function __FUNC_217_(arg0, arg1)
	local function __FUNC_284_(arg0, arg1)
		if arg0.currentState == "NavButton" then
			local registerVal4 = arg0.buttonText:getTextWidth()
		else
			registerVal4 = arg0.text:getTextWidth()
		end
		return (registerVal4 + 50.000000)
	end

	arg0.getWidthInList = __FUNC_284_
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.WeaponGroupsTabWidget = registerVal2
local function __FUNC_36E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponGroupsTabWidget)
	registerVal2.id = "WeaponGroupsTabWidget"
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
	registerVal3:setShaderVector(0.000000, 0.490000, 0.500000, 0.416667, 0.333333)
	registerVal3:setupNineSliceShader(96.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETabFocus = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.041240, 0.190000, 0.000000, 0.000000)
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
	registerVal6:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal6:setTopBottom(false, false, -9.000000, 12.000000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(2.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1797_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "tabName", true, __FUNC_1797_)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -100.000000, 100.000000)
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
	local function __FUNC_184E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "tabName", true, __FUNC_184E_)
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
	local function __FUNC_1906_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_1906_)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonText = registerVal10
	local registerVal11 = CoD.NewBreadcrumbCount.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -22.000000, -4.000000)
	registerVal11:setTopBottom(true, false, -5.000000, 13.000000)
	local function __FUNC_19BE_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_19BE_)
	local function __FUNC_1A0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.countText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "breadcrumbCount", true, __FUNC_1A0E_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_1AE5_(arg0, arg2, arg3)
		return ShouldDisplayWeaponGroupBreadcrumbCount(registerVal2, arg1)
	end

	registerVal15.condition = __FUNC_1AE5_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_1B55_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "breadcrumbCount"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "breadcrumbCount", true, __FUNC_1B55_)
	registerVal2:addElement(registerVal11)
	registerVal2.breadcrumbCount = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1C79_()
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

	registerVal13.DefaultClip = __FUNC_1C79_
	local function __FUNC_1FD7_()
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

	registerVal13.Active = __FUNC_1FD7_
	local function __FUNC_22D6_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_25C7_(arg0, arg1)
			local function __FUNC_273F_(arg0, arg1)
				local function __FUNC_28B7_(arg0, arg1)
					local function __FUNC_2A2F_(arg0, arg1)
						local function __FUNC_2BA7_(arg0, arg1)
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
							__FUNC_2BA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA7_)
					end

					if arg1.interrupted then
						__FUNC_2A2F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A2F_)
				end

				if arg1.interrupted then
					__FUNC_28B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.320000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B7_)
			end

			if arg1.interrupted then
				__FUNC_273F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273F_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.370000)
		__FUNC_25C7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2D59_(arg0, arg1)
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
		__FUNC_2D59_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2F0D_(arg0, arg1)
			local function __FUNC_3087_(arg0, arg1)
				local function __FUNC_31FF_(arg0, arg1)
					local function __FUNC_3354_(arg0, arg1)
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
						__FUNC_3354_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3354_)
				end

				if arg1.interrupted then
					__FUNC_31FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31FF_)
			end

			if arg1.interrupted then
				__FUNC_3087_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3087_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(0.000000)
		__FUNC_2F0D_(registerVal7, {})
		local function __FUNC_3509_(arg0, arg1)
			local function __FUNC_3660_(arg0, arg1)
				local function __FUNC_37DB_(arg0, arg1)
					local function __FUNC_3953_(arg0, arg1)
						local function __FUNC_3AA8_(arg0, arg1)
							local function __FUNC_3C23_(arg0, arg1)
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
								__FUNC_3C23_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C23_)
						end

						if arg1.interrupted then
							__FUNC_3AA8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AA8_)
					end

					if arg1.interrupted then
						__FUNC_3953_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3953_)
				end

				if arg1.interrupted then
					__FUNC_37DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37DB_)
			end

			if arg1.interrupted then
				__FUNC_3660_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3660_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_3509_(registerVal8, {})
		local function __FUNC_3DD5_(arg0, arg1)
			local function __FUNC_3F2C_(arg0, arg1)
				local function __FUNC_40A7_(arg0, arg1)
					local function __FUNC_41FC_(arg0, arg1)
						local function __FUNC_4377_(arg0, arg1)
							local function __FUNC_44CC_(arg0, arg1)
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
								__FUNC_44CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44CC_)
						end

						if arg1.interrupted then
							__FUNC_4377_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4377_)
					end

					if arg1.interrupted then
						__FUNC_41FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41FC_)
				end

				if arg1.interrupted then
					__FUNC_40A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40A7_)
			end

			if arg1.interrupted then
				__FUNC_3F2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F2C_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3DD5_(registerVal9, {})
	end

	registerVal13.GainActive = __FUNC_22D6_
	local function __FUNC_4681_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4950_(arg0, arg1)
			local function __FUNC_4ACB_(arg0, arg1)
				local function __FUNC_4C43_(arg0, arg1)
					local function __FUNC_4DBB_(arg0, arg1)
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
						__FUNC_4DBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DBB_)
				end

				if arg1.interrupted then
					__FUNC_4C43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C43_)
			end

			if arg1.interrupted then
				__FUNC_4ACB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.540000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ACB_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(1.000000)
		__FUNC_4950_(registerVal3, {})
		local function __FUNC_4F6D_(arg0, arg1)
			local function __FUNC_50C4_(arg0, arg1)
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
				__FUNC_50C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50C4_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		__FUNC_4F6D_(registerVal4, {})
		local function __FUNC_5279_(arg0, arg1)
			local function __FUNC_53F3_(arg0, arg1)
				local function __FUNC_556B_(arg0, arg1)
					local function __FUNC_56E3_(arg0, arg1)
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
						__FUNC_56E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56E3_)
				end

				if arg1.interrupted then
					__FUNC_556B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.780000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_556B_)
			end

			if arg1.interrupted then
				__FUNC_53F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53F3_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_5279_(registerVal5, {})
		local function __FUNC_5895_(arg0, arg1)
			local function __FUNC_59EC_(arg0, arg1)
				local function __FUNC_5B67_(arg0, arg1)
					local function __FUNC_5CDF_(arg0, arg1)
						local function __FUNC_5E57_(arg0, arg1)
							local function __FUNC_5FCF_(arg0, arg1)
								local function __FUNC_6147_(arg0, arg1)
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
									__FUNC_6147_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6147_)
							end

							if arg1.interrupted then
								__FUNC_5FCF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.240000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FCF_)
						end

						if arg1.interrupted then
							__FUNC_5E57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E57_)
					end

					if arg1.interrupted then
						__FUNC_5CDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.280000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CDF_)
				end

				if arg1.interrupted then
					__FUNC_5B67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B67_)
			end

			if arg1.interrupted then
				__FUNC_59EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59EC_)
		end

		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_5895_(registerVal6, {})
		local function __FUNC_62F9_(arg0, arg1)
			local function __FUNC_6450_(arg0, arg1)
				local function __FUNC_65CB_(arg0, arg1)
					local function __FUNC_6743_(arg0, arg1)
						local function __FUNC_68BB_(arg0, arg1)
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
							__FUNC_68BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68BB_)
					end

					if arg1.interrupted then
						__FUNC_6743_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6743_)
				end

				if arg1.interrupted then
					__FUNC_65CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CB_)
			end

			if arg1.interrupted then
				__FUNC_6450_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6450_)
		end

		registerVal7:completeAnimation()
		registerVal2.textDark:setAlpha(1.000000)
		__FUNC_62F9_(registerVal7, {})
		local function __FUNC_6A6D_(arg0, arg1)
			local function __FUNC_6BC4_(arg0, arg1)
				local function __FUNC_6D1C_(arg0, arg1)
					local function __FUNC_6E97_(arg0, arg1)
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
						__FUNC_6E97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E97_)
				end

				if arg1.interrupted then
					__FUNC_6D1C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D1C_)
			end

			if arg1.interrupted then
				__FUNC_6BC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BC4_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6A6D_(registerVal8, {})
		local function __FUNC_7049_(arg0, arg1)
			local function __FUNC_71C3_(arg0, arg1)
				local function __FUNC_7318_(arg0, arg1)
					local function __FUNC_7493_(arg0, arg1)
						local function __FUNC_75E8_(arg0, arg1)
							local function __FUNC_7763_(arg0, arg1)
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
								__FUNC_7763_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.340000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7763_)
						end

						if arg1.interrupted then
							__FUNC_75E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75E8_)
					end

					if arg1.interrupted then
						__FUNC_7493_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7493_)
				end

				if arg1.interrupted then
					__FUNC_7318_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7318_)
			end

			if arg1.interrupted then
				__FUNC_71C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71C3_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7049_(registerVal9, {})
	end

	registerVal13.LoseActive = __FUNC_4681_
	local function __FUNC_7915_()
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

	registerVal13.Over = __FUNC_7915_
	local function __FUNC_7C78_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_7FD3_(arg0, arg1)
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
		__FUNC_7FD3_(registerVal5, {})
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

	registerVal13.GainOver = __FUNC_7C78_
	local function __FUNC_8185_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FETabFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_84E4_(arg0, arg1)
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
		__FUNC_84E4_(registerVal5, {})
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

	registerVal13.LoseOver = __FUNC_8185_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_8699_()
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
		registerVal2.buttonText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_8699_
	registerVal12.NavButton = registerVal13
	registerVal13 = {}
	local function __FUNC_89F2_()
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

	registerVal13.DefaultClip = __FUNC_89F2_
	registerVal12.NavButtonHiddenPrompt = registerVal13
	registerVal13 = {}
	local function __FUNC_8D4A_()
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

	registerVal13.DefaultClip = __FUNC_8D4A_
	registerVal12.Disabled = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "NavButton"
	local function __FUNC_90A7_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_90A7_
	local registerVal16 = {}
	registerVal16.stateName = "NavButtonHiddenPrompt"
	local function __FUNC_9128_(arg0, arg2, arg3)
		local registerVal3 = ShouldDisplayButton(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_9128_
	local registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_91B0_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal17.condition = __FUNC_91B0_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_9204_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "tabIcon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "tabIcon", true, __FUNC_9204_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_9321_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_9321_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_93AB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_93AB_)
	local function __FUNC_94C7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_94C7_)
	local function __FUNC_95E2_(arg0)
		arg0.breadcrumbCount:close()
		arg0.text:close()
		arg0.textDark:close()
		arg0.buttonText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_95E2_)
	if __FUNC_217_ then
		__FUNC_217_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WeaponGroupsTabWidget.new = __FUNC_36E_
