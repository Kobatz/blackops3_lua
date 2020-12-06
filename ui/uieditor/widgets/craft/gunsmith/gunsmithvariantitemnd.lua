-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_IconTokenGrid")
require("ui.uieditor.widgets.PC.Craft.Gunsmith.VariantOptionsButton")
require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
local function __FUNC_4D0_(arg0, arg1)
	local function __FUNC_5A5_(arg0, arg1)
		arg0:setHandleMouseButton(false)
	end

	arg0:registerEventHandler("disable_mouse_button", __FUNC_5A5_)
	local function __FUNC_5FA_(arg0, arg1)
		arg0:setHandleMouseButton(true)
	end

	arg0:registerEventHandler("enable_mouse_button", __FUNC_5FA_)
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_64E_(arg0, arg1)
	if CoD.isPC then
		__FUNC_4D0_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantItemND = registerVal3
local function __FUNC_6BB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantItemND)
	registerVal2.id = "GunsmithVariantItemND"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1BE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupWCVariantIconExtraCamRender(GetGunsmithExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "variantIndex", true, __FUNC_1BE3_)
	registerVal2:addElement(registerVal6)
	registerVal2.extraCamRender = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal7:setRGB(0.560000, 0.680000, 0.270000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal7)
	registerVal2.equippedIcon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal8)
	registerVal2.alertIcon = registerVal8
	local registerVal9 = CoD.cac_lock.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal9:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.lockedIcon = registerVal9
	local registerVal10 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal10:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.IconNew = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal13:setRGB(1.000000, 0.300000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBorder = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal14:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal14:setRGB(1.000000, 0.090000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal15:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal15:setRGB(1.000000, 0.150000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch2 = registerVal15
	local registerVal16 = CoD.cac_IconTokenGrid.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, -28.000000, 0.000000)
	registerVal16:setTopBottom(true, false, -0.500000, 27.500000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.cacIconTokenGrid0 = registerVal16
	local registerVal17 = CoD.VariantOptionsButton.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 84.000000, 104.000000)
	registerVal17:setTopBottom(true, false, 3.500000, 23.500000)
	registerVal17:setAlpha(0.000000)
	registerVal17.itemHintText.textCenterAlign:setText(Engine.Localize("MENU_GUNSMITH_VARIANT_OPTIONS"))
	local function __FUNC_1CC0_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_1CC0_)
	registerVal2:addElement(registerVal17)
	registerVal2.variantOptionsButton = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal18:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_img_t7_menu_customclass_plus"))
	registerVal2:addElement(registerVal18)
	registerVal2.emptyLayerIcon = registerVal18
	local registerVal19 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal19:setTopBottom(true, true, 84.000000, -4.000000)
	registerVal19:setRGB(0.000000, 0.000000, 0.000000)
	registerVal19:setAlpha(0.400000)
	registerVal2:addElement(registerVal19)
	registerVal2.Panel0 = registerVal19
	local registerVal20 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 4.000000, 104.000000)
	registerVal20:setTopBottom(true, false, 84.000000, 106.000000)
	registerVal20.textBox:setTTF("fonts/default.ttf")
	registerVal20.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal20)
	registerVal2.horizontalScrollingTextBox20pt = registerVal20
	local function __FUNC_1D12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20.textBox:setText(registerVal1)
		end
	end

	registerVal2.horizontalScrollingTextBox20pt:linkToElementModel(registerVal2, "variantName", true, __FUNC_1D12_)
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_1DC1_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.extraCamRender:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.variantOptionsButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Panel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.horizontalScrollingTextBox20pt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_1DC1_
	local function __FUNC_2487_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_2844_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2844_(registerVal4, {})
		local function __FUNC_29F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.extraCamRender:setAlpha(0.800000)
		__FUNC_29F9_(registerVal6, {})
		local function __FUNC_2BAD_(arg0, arg1)
			local function __FUNC_2D04_(arg0, arg1)
				local function __FUNC_2E7F_(arg0, arg1)
					local function __FUNC_2FD4_(arg0, arg1)
						local function __FUNC_314F_(arg0, arg1)
							local function __FUNC_32A4_(arg0, arg1)
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
								__FUNC_32A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A4_)
						end

						if arg1.interrupted then
							__FUNC_314F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_314F_)
					end

					if arg1.interrupted then
						__FUNC_2FD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FD4_)
				end

				if arg1.interrupted then
					__FUNC_2E7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E7F_)
			end

			if arg1.interrupted then
				__FUNC_2D04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D04_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2BAD_(registerVal11, {})
		local function __FUNC_3459_(arg0, arg1)
			local function __FUNC_35B0_(arg0, arg1)
				local function __FUNC_372B_(arg0, arg1)
					local function __FUNC_3880_(arg0, arg1)
						local function __FUNC_39FB_(arg0, arg1)
							local function __FUNC_3B50_(arg0, arg1)
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
								__FUNC_3B50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B50_)
						end

						if arg1.interrupted then
							__FUNC_39FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39FB_)
					end

					if arg1.interrupted then
						__FUNC_3880_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3880_)
				end

				if arg1.interrupted then
					__FUNC_372B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_372B_)
			end

			if arg1.interrupted then
				__FUNC_35B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3459_(registerVal12, {})
		local function __FUNC_3D05_(arg0, arg1)
			local function __FUNC_3E5C_(arg0, arg1)
				local function __FUNC_3FD7_(arg0, arg1)
					local function __FUNC_414F_(arg0, arg1)
						local function __FUNC_42C7_(arg0, arg1)
							local function __FUNC_441C_(arg0, arg1)
								local function __FUNC_4597_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_4597_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4597_)
							end

							if arg1.interrupted then
								__FUNC_441C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_441C_)
						end

						if arg1.interrupted then
							__FUNC_42C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42C7_)
					end

					if arg1.interrupted then
						__FUNC_414F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_414F_)
				end

				if arg1.interrupted then
					__FUNC_3FD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD7_)
			end

			if arg1.interrupted then
				__FUNC_3E5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E5C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3D05_(registerVal13, {})
		local function __FUNC_4749_(arg0, arg1)
			local function __FUNC_48A0_(arg0, arg1)
				local function __FUNC_4A1B_(arg0, arg1)
					local function __FUNC_4B70_(arg0, arg1)
						local function __FUNC_4CEB_(arg0, arg1)
							local function __FUNC_4E40_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4E40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E40_)
						end

						if arg1.interrupted then
							__FUNC_4CEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CEB_)
					end

					if arg1.interrupted then
						__FUNC_4B70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B70_)
				end

				if arg1.interrupted then
					__FUNC_4A1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A1B_)
			end

			if arg1.interrupted then
				__FUNC_48A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4749_(registerVal14, {})
		local function __FUNC_4FF5_(arg0, arg1)
			local function __FUNC_514C_(arg0, arg1)
				local function __FUNC_52C7_(arg0, arg1)
					local function __FUNC_541C_(arg0, arg1)
						local function __FUNC_5597_(arg0, arg1)
							local function __FUNC_56EC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_56EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56EC_)
						end

						if arg1.interrupted then
							__FUNC_5597_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5597_)
					end

					if arg1.interrupted then
						__FUNC_541C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_541C_)
				end

				if arg1.interrupted then
					__FUNC_52C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52C7_)
			end

			if arg1.interrupted then
				__FUNC_514C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_514C_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4FF5_(registerVal15, {})
		local function __FUNC_58A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.variantOptionsButton:setAlpha(0.000000)
		__FUNC_58A1_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.GainFocus = __FUNC_2487_
	local function __FUNC_5A55_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.extraCamRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal17:completeAnimation()
		registerVal2.variantOptionsButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.Focus = __FUNC_5A55_
	local function __FUNC_5D2D_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_60E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_60E7_(registerVal4, {})
		local function __FUNC_6299_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.extraCamRender:setAlpha(1.000000)
		__FUNC_6299_(registerVal6, {})
		local function __FUNC_644D_(arg0, arg1)
			local function __FUNC_65C7_(arg0, arg1)
				local function __FUNC_673F_(arg0, arg1)
					local function __FUNC_68B7_(arg0, arg1)
						local function __FUNC_6A0C_(arg0, arg1)
							local function __FUNC_6B87_(arg0, arg1)
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
								__FUNC_6B87_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B87_)
						end

						if arg1.interrupted then
							__FUNC_6A0C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A0C_)
					end

					if arg1.interrupted then
						__FUNC_68B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68B7_)
				end

				if arg1.interrupted then
					__FUNC_673F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_673F_)
			end

			if arg1.interrupted then
				__FUNC_65C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65C7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_644D_(registerVal11, {})
		local function __FUNC_6D39_(arg0, arg1)
			local function __FUNC_6EB3_(arg0, arg1)
				local function __FUNC_702B_(arg0, arg1)
					local function __FUNC_71A3_(arg0, arg1)
						local function __FUNC_72F8_(arg0, arg1)
							local function __FUNC_7473_(arg0, arg1)
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
								__FUNC_7473_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7473_)
						end

						if arg1.interrupted then
							__FUNC_72F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72F8_)
					end

					if arg1.interrupted then
						__FUNC_71A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71A3_)
				end

				if arg1.interrupted then
					__FUNC_702B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_702B_)
			end

			if arg1.interrupted then
				__FUNC_6EB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EB3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6D39_(registerVal12, {})
		local function __FUNC_7625_(arg0, arg1)
			local function __FUNC_777C_(arg0, arg1)
				local function __FUNC_78F7_(arg0, arg1)
					local function __FUNC_7A6F_(arg0, arg1)
						local function __FUNC_7BE7_(arg0, arg1)
							local function __FUNC_7D3C_(arg0, arg1)
								local function __FUNC_7EB7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7EB7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EB7_)
							end

							if arg1.interrupted then
								__FUNC_7D3C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D3C_)
						end

						if arg1.interrupted then
							__FUNC_7BE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BE7_)
					end

					if arg1.interrupted then
						__FUNC_7A6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A6F_)
				end

				if arg1.interrupted then
					__FUNC_78F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78F7_)
			end

			if arg1.interrupted then
				__FUNC_777C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_777C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_7625_(registerVal13, {})
		local function __FUNC_8069_(arg0, arg1)
			local function __FUNC_81C0_(arg0, arg1)
				local function __FUNC_833B_(arg0, arg1)
					local function __FUNC_8490_(arg0, arg1)
						local function __FUNC_860B_(arg0, arg1)
							local function __FUNC_8760_(arg0, arg1)
								local function __FUNC_88DB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_88DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88DB_)
							end

							if arg1.interrupted then
								__FUNC_8760_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8760_)
						end

						if arg1.interrupted then
							__FUNC_860B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_860B_)
					end

					if arg1.interrupted then
						__FUNC_8490_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8490_)
				end

				if arg1.interrupted then
					__FUNC_833B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_833B_)
			end

			if arg1.interrupted then
				__FUNC_81C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81C0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_8069_(registerVal14, {})
		local function __FUNC_8A8D_(arg0, arg1)
			local function __FUNC_8BE4_(arg0, arg1)
				local function __FUNC_8D5F_(arg0, arg1)
					local function __FUNC_8EB4_(arg0, arg1)
						local function __FUNC_902F_(arg0, arg1)
							local function __FUNC_9184_(arg0, arg1)
								local function __FUNC_92FF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_92FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92FF_)
							end

							if arg1.interrupted then
								__FUNC_9184_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9184_)
						end

						if arg1.interrupted then
							__FUNC_902F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_902F_)
					end

					if arg1.interrupted then
						__FUNC_8EB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EB4_)
				end

				if arg1.interrupted then
					__FUNC_8D5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D5F_)
			end

			if arg1.interrupted then
				__FUNC_8BE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BE4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8A8D_(registerVal15, {})
		local function __FUNC_94B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.variantOptionsButton:setAlpha(1.000000)
		__FUNC_94B1_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.LoseFocus = __FUNC_5D2D_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_9665_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.Panel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.horizontalScrollingTextBox20pt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_9665_
	local function __FUNC_9C9C_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_9FDA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_9FDA_(registerVal4, {})
		local function __FUNC_A18D_(arg0, arg1)
			local function __FUNC_A2E4_(arg0, arg1)
				local function __FUNC_A45F_(arg0, arg1)
					local function __FUNC_A5B4_(arg0, arg1)
						local function __FUNC_A72F_(arg0, arg1)
							local function __FUNC_A884_(arg0, arg1)
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
								__FUNC_A884_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A884_)
						end

						if arg1.interrupted then
							__FUNC_A72F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A72F_)
					end

					if arg1.interrupted then
						__FUNC_A5B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5B4_)
				end

				if arg1.interrupted then
					__FUNC_A45F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A45F_)
			end

			if arg1.interrupted then
				__FUNC_A2E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2E4_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A18D_(registerVal11, {})
		local function __FUNC_AA39_(arg0, arg1)
			local function __FUNC_AB90_(arg0, arg1)
				local function __FUNC_AD0B_(arg0, arg1)
					local function __FUNC_AE60_(arg0, arg1)
						local function __FUNC_AFDB_(arg0, arg1)
							local function __FUNC_B130_(arg0, arg1)
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
								__FUNC_B130_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B130_)
						end

						if arg1.interrupted then
							__FUNC_AFDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFDB_)
					end

					if arg1.interrupted then
						__FUNC_AE60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE60_)
				end

				if arg1.interrupted then
					__FUNC_AD0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD0B_)
			end

			if arg1.interrupted then
				__FUNC_AB90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB90_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AA39_(registerVal12, {})
		local function __FUNC_B2E5_(arg0, arg1)
			local function __FUNC_B43C_(arg0, arg1)
				local function __FUNC_B5B7_(arg0, arg1)
					local function __FUNC_B72F_(arg0, arg1)
						local function __FUNC_B8A7_(arg0, arg1)
							local function __FUNC_B9FC_(arg0, arg1)
								local function __FUNC_BB77_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_BB77_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB77_)
							end

							if arg1.interrupted then
								__FUNC_B9FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9FC_)
						end

						if arg1.interrupted then
							__FUNC_B8A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8A7_)
					end

					if arg1.interrupted then
						__FUNC_B72F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B72F_)
				end

				if arg1.interrupted then
					__FUNC_B5B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5B7_)
			end

			if arg1.interrupted then
				__FUNC_B43C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B43C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B2E5_(registerVal13, {})
		local function __FUNC_BD29_(arg0, arg1)
			local function __FUNC_BE80_(arg0, arg1)
				local function __FUNC_BFFB_(arg0, arg1)
					local function __FUNC_C150_(arg0, arg1)
						local function __FUNC_C2CB_(arg0, arg1)
							local function __FUNC_C420_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C420_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C420_)
						end

						if arg1.interrupted then
							__FUNC_C2CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2CB_)
					end

					if arg1.interrupted then
						__FUNC_C150_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C150_)
				end

				if arg1.interrupted then
					__FUNC_BFFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFFB_)
			end

			if arg1.interrupted then
				__FUNC_BE80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE80_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_BD29_(registerVal14, {})
		local function __FUNC_C5D5_(arg0, arg1)
			local function __FUNC_C72C_(arg0, arg1)
				local function __FUNC_C8A7_(arg0, arg1)
					local function __FUNC_C9FC_(arg0, arg1)
						local function __FUNC_CB77_(arg0, arg1)
							local function __FUNC_CCCC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CCCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCCC_)
						end

						if arg1.interrupted then
							__FUNC_CB77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB77_)
					end

					if arg1.interrupted then
						__FUNC_C9FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9FC_)
				end

				if arg1.interrupted then
					__FUNC_C8A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8A7_)
			end

			if arg1.interrupted then
				__FUNC_C72C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C72C_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C5D5_(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.GainFocus = __FUNC_9C9C_
	local function __FUNC_CE81_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.Focus = __FUNC_CE81_
	local function __FUNC_D0D4_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_D40D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_D40D_(registerVal4, {})
		local function __FUNC_D5C1_(arg0, arg1)
			local function __FUNC_D73B_(arg0, arg1)
				local function __FUNC_D8B3_(arg0, arg1)
					local function __FUNC_DA2B_(arg0, arg1)
						local function __FUNC_DB80_(arg0, arg1)
							local function __FUNC_DCFB_(arg0, arg1)
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
								__FUNC_DCFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCFB_)
						end

						if arg1.interrupted then
							__FUNC_DB80_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB80_)
					end

					if arg1.interrupted then
						__FUNC_DA2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA2B_)
				end

				if arg1.interrupted then
					__FUNC_D8B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8B3_)
			end

			if arg1.interrupted then
				__FUNC_D73B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D73B_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_D5C1_(registerVal11, {})
		local function __FUNC_DEAD_(arg0, arg1)
			local function __FUNC_E027_(arg0, arg1)
				local function __FUNC_E19F_(arg0, arg1)
					local function __FUNC_E317_(arg0, arg1)
						local function __FUNC_E46C_(arg0, arg1)
							local function __FUNC_E5E7_(arg0, arg1)
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
								__FUNC_E5E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5E7_)
						end

						if arg1.interrupted then
							__FUNC_E46C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E46C_)
					end

					if arg1.interrupted then
						__FUNC_E317_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E317_)
				end

				if arg1.interrupted then
					__FUNC_E19F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E19F_)
			end

			if arg1.interrupted then
				__FUNC_E027_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E027_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_DEAD_(registerVal12, {})
		local function __FUNC_E799_(arg0, arg1)
			local function __FUNC_E8F0_(arg0, arg1)
				local function __FUNC_EA6B_(arg0, arg1)
					local function __FUNC_EBE3_(arg0, arg1)
						local function __FUNC_ED5B_(arg0, arg1)
							local function __FUNC_EEB0_(arg0, arg1)
								local function __FUNC_F02B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_F02B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F02B_)
							end

							if arg1.interrupted then
								__FUNC_EEB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEB0_)
						end

						if arg1.interrupted then
							__FUNC_ED5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED5B_)
					end

					if arg1.interrupted then
						__FUNC_EBE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBE3_)
				end

				if arg1.interrupted then
					__FUNC_EA6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA6B_)
			end

			if arg1.interrupted then
				__FUNC_E8F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8F0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_E799_(registerVal13, {})
		local function __FUNC_F1DD_(arg0, arg1)
			local function __FUNC_F334_(arg0, arg1)
				local function __FUNC_F4AF_(arg0, arg1)
					local function __FUNC_F604_(arg0, arg1)
						local function __FUNC_F77F_(arg0, arg1)
							local function __FUNC_F8D4_(arg0, arg1)
								local function __FUNC_FA4F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_FA4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA4F_)
							end

							if arg1.interrupted then
								__FUNC_F8D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8D4_)
						end

						if arg1.interrupted then
							__FUNC_F77F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F77F_)
					end

					if arg1.interrupted then
						__FUNC_F604_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F604_)
				end

				if arg1.interrupted then
					__FUNC_F4AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4AF_)
			end

			if arg1.interrupted then
				__FUNC_F334_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F334_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F1DD_(registerVal14, {})
		local function __FUNC_FC01_(arg0, arg1)
			local function __FUNC_FD58_(arg0, arg1)
				local function __FUNC_FED3_(arg0, arg1)
					local function __FUNC_10028_(arg0, arg1)
						local function __FUNC_101A3_(arg0, arg1)
							local function __FUNC_102F8_(arg0, arg1)
								local function __FUNC_10473_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_10473_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10473_)
							end

							if arg1.interrupted then
								__FUNC_102F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102F8_)
						end

						if arg1.interrupted then
							__FUNC_101A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101A3_)
					end

					if arg1.interrupted then
						__FUNC_10028_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10028_)
				end

				if arg1.interrupted then
					__FUNC_FED3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FED3_)
			end

			if arg1.interrupted then
				__FUNC_FD58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD58_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_FC01_(registerVal15, {})
		registerVal18:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.LoseFocus = __FUNC_D0D4_
	registerVal21.EmptySlot = registerVal22
	registerVal2.clipsPerState = registerVal21
	local function __FUNC_10625_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.cacIconTokenGrid0:close()
		arg0.variantOptionsButton:close()
		arg0.Panel0:close()
		arg0.horizontalScrollingTextBox20pt:close()
		arg0.extraCamRender:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10625_)
	if __FUNC_64E_ then
		__FUNC_64E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GunsmithVariantItemND.new = __FUNC_6BB_
