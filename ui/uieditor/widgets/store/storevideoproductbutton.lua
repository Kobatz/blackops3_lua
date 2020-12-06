-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Store.StoreProductNameLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Store.StorePriceContainer")
require("ui.uieditor.widgets.Store.StorePriceLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreVideoProductButton = registerVal1
function CoD.StoreVideoProductButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreVideoProductButton)
	registerVal2.id = "StoreVideoProductButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 267.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 150.000000)
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
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, true)
	registerVal7:setLeftRight(true, false, -1.000000, 268.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 151.000000)
	local function __FUNC_1908_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1908_)
	local function __FUNC_195A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_195A_)
	registerVal2:addElement(registerVal7)
	registerVal2.frameWidget = registerVal7
	local registerVal8 = CoD.StoreProductNameLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal8:setTopBottom(false, true, -28.000000, 0.000000)
	registerVal8.Panel:setAlpha(0.750000)
	local function __FUNC_19F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_19F6_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hide"
	local function __FUNC_1ACC_(arg0, arg1, arg2)
		return HideProductNameAndDesc()
	end

	registerVal12.condition = __FUNC_1ACC_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.productName = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal9:setRGB(1.000000, 0.410000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal9)
	registerVal2.alertIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal10:setRGB(0.560000, 0.680000, 0.270000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.equippedIcon = registerVal10
	registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
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
	local registerVal16 = CoD.StorePriceContainer.new(arg0, arg1)
	registerVal16:setLeftRight(false, true, -81.000000, -2.000000)
	registerVal16:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal16.StorePriceLabel.Glow:setRGB(1.000000, 0.410000, 0.000000)
	registerVal16.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
	local function __FUNC_1B24_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1B24_)
	local function __FUNC_1B76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.StorePriceLabel.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "price", true, __FUNC_1B76_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Hide"
	local function __FUNC_1C71_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "price")
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_1C71_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_1CEF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "price"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "price", true, __FUNC_1CEF_)
	registerVal2:addElement(registerVal16)
	registerVal2.price = registerVal16
	local registerVal17 = CoD.StorePriceLabel.new(arg0, arg1)
	registerVal17:setLeftRight(false, true, -82.000000, -2.000000)
	registerVal17:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17.Panel:setAlpha(0.850000)
	registerVal17.Glow:setRGB(0.990000, 1.000000, 0.040000)
	registerVal17.Glow:setAlpha(0.250000)
	registerVal17.itemName:setRGB(1.000000, 0.990000, 0.040000)
	registerVal17.itemName:setText(Engine.Localize("MENU_STORE_OFFER_PURCHASED"))
	registerVal2:addElement(registerVal17)
	registerVal2.purchase = registerVal17
	local registerVal18 = {}
	registerVal19 = {}
	local function __FUNC_1E07_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.purchase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1E07_
	local function __FUNC_2517_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2A04_(arg0, arg1)
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
		__FUNC_2A04_(registerVal4, {})
		local function __FUNC_2BB9_(arg0, arg1)
			local function __FUNC_2D10_(arg0, arg1)
				local function __FUNC_2E8B_(arg0, arg1)
					local function __FUNC_2FE0_(arg0, arg1)
						local function __FUNC_315B_(arg0, arg1)
							local function __FUNC_32B0_(arg0, arg1)
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
								__FUNC_32B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32B0_)
						end

						if arg1.interrupted then
							__FUNC_315B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_315B_)
					end

					if arg1.interrupted then
						__FUNC_2FE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE0_)
				end

				if arg1.interrupted then
					__FUNC_2E8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8B_)
			end

			if arg1.interrupted then
				__FUNC_2D10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D10_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2BB9_(registerVal11, {})
		local function __FUNC_3465_(arg0, arg1)
			local function __FUNC_35BC_(arg0, arg1)
				local function __FUNC_3737_(arg0, arg1)
					local function __FUNC_388C_(arg0, arg1)
						local function __FUNC_3A07_(arg0, arg1)
							local function __FUNC_3B5C_(arg0, arg1)
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
								__FUNC_3B5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B5C_)
						end

						if arg1.interrupted then
							__FUNC_3A07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A07_)
					end

					if arg1.interrupted then
						__FUNC_388C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_388C_)
				end

				if arg1.interrupted then
					__FUNC_3737_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3737_)
			end

			if arg1.interrupted then
				__FUNC_35BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35BC_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3465_(registerVal12, {})
		local function __FUNC_3D11_(arg0, arg1)
			local function __FUNC_3E68_(arg0, arg1)
				local function __FUNC_3FE3_(arg0, arg1)
					local function __FUNC_415B_(arg0, arg1)
						local function __FUNC_42D3_(arg0, arg1)
							local function __FUNC_4428_(arg0, arg1)
								local function __FUNC_45A3_(arg0, arg1)
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
									__FUNC_45A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A3_)
							end

							if arg1.interrupted then
								__FUNC_4428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4428_)
						end

						if arg1.interrupted then
							__FUNC_42D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42D3_)
					end

					if arg1.interrupted then
						__FUNC_415B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_415B_)
				end

				if arg1.interrupted then
					__FUNC_3FE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FE3_)
			end

			if arg1.interrupted then
				__FUNC_3E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E68_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3D11_(registerVal13, {})
		local function __FUNC_4755_(arg0, arg1)
			local function __FUNC_48AC_(arg0, arg1)
				local function __FUNC_4A27_(arg0, arg1)
					local function __FUNC_4B7C_(arg0, arg1)
						local function __FUNC_4CF7_(arg0, arg1)
							local function __FUNC_4E4C_(arg0, arg1)
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
								__FUNC_4E4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E4C_)
						end

						if arg1.interrupted then
							__FUNC_4CF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CF7_)
					end

					if arg1.interrupted then
						__FUNC_4B7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B7C_)
				end

				if arg1.interrupted then
					__FUNC_4A27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A27_)
			end

			if arg1.interrupted then
				__FUNC_48AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48AC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4755_(registerVal14, {})
		local function __FUNC_5001_(arg0, arg1)
			local function __FUNC_5158_(arg0, arg1)
				local function __FUNC_52D3_(arg0, arg1)
					local function __FUNC_5428_(arg0, arg1)
						local function __FUNC_55A3_(arg0, arg1)
							local function __FUNC_56F8_(arg0, arg1)
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
								__FUNC_56F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F8_)
						end

						if arg1.interrupted then
							__FUNC_55A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55A3_)
					end

					if arg1.interrupted then
						__FUNC_5428_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5428_)
				end

				if arg1.interrupted then
					__FUNC_52D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52D3_)
			end

			if arg1.interrupted then
				__FUNC_5158_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5158_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_5001_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_2517_
	local function __FUNC_58AD_()
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
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_58AD_
	local function __FUNC_5CB2_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_61A0_(arg0, arg1)
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
		__FUNC_61A0_(registerVal4, {})
		local function __FUNC_6355_(arg0, arg1)
			local function __FUNC_64CF_(arg0, arg1)
				local function __FUNC_6647_(arg0, arg1)
					local function __FUNC_67BF_(arg0, arg1)
						local function __FUNC_6914_(arg0, arg1)
							local function __FUNC_6A8F_(arg0, arg1)
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
								__FUNC_6A8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A8F_)
						end

						if arg1.interrupted then
							__FUNC_6914_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6914_)
					end

					if arg1.interrupted then
						__FUNC_67BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67BF_)
				end

				if arg1.interrupted then
					__FUNC_6647_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6647_)
			end

			if arg1.interrupted then
				__FUNC_64CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64CF_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6355_(registerVal11, {})
		local function __FUNC_6C41_(arg0, arg1)
			local function __FUNC_6DBB_(arg0, arg1)
				local function __FUNC_6F33_(arg0, arg1)
					local function __FUNC_70AB_(arg0, arg1)
						local function __FUNC_7200_(arg0, arg1)
							local function __FUNC_737B_(arg0, arg1)
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
								__FUNC_737B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_737B_)
						end

						if arg1.interrupted then
							__FUNC_7200_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7200_)
					end

					if arg1.interrupted then
						__FUNC_70AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70AB_)
				end

				if arg1.interrupted then
					__FUNC_6F33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F33_)
			end

			if arg1.interrupted then
				__FUNC_6DBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DBB_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6C41_(registerVal12, {})
		local function __FUNC_752D_(arg0, arg1)
			local function __FUNC_7684_(arg0, arg1)
				local function __FUNC_77FF_(arg0, arg1)
					local function __FUNC_7977_(arg0, arg1)
						local function __FUNC_7AEF_(arg0, arg1)
							local function __FUNC_7C44_(arg0, arg1)
								local function __FUNC_7DBF_(arg0, arg1)
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
									__FUNC_7DBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DBF_)
							end

							if arg1.interrupted then
								__FUNC_7C44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C44_)
						end

						if arg1.interrupted then
							__FUNC_7AEF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AEF_)
					end

					if arg1.interrupted then
						__FUNC_7977_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7977_)
				end

				if arg1.interrupted then
					__FUNC_77FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77FF_)
			end

			if arg1.interrupted then
				__FUNC_7684_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7684_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_752D_(registerVal13, {})
		local function __FUNC_7F71_(arg0, arg1)
			local function __FUNC_80C8_(arg0, arg1)
				local function __FUNC_8243_(arg0, arg1)
					local function __FUNC_8398_(arg0, arg1)
						local function __FUNC_8513_(arg0, arg1)
							local function __FUNC_8668_(arg0, arg1)
								local function __FUNC_87E3_(arg0, arg1)
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
									__FUNC_87E3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87E3_)
							end

							if arg1.interrupted then
								__FUNC_8668_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8668_)
						end

						if arg1.interrupted then
							__FUNC_8513_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8513_)
					end

					if arg1.interrupted then
						__FUNC_8398_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8398_)
				end

				if arg1.interrupted then
					__FUNC_8243_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8243_)
			end

			if arg1.interrupted then
				__FUNC_80C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80C8_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7F71_(registerVal14, {})
		local function __FUNC_8995_(arg0, arg1)
			local function __FUNC_8AEC_(arg0, arg1)
				local function __FUNC_8C67_(arg0, arg1)
					local function __FUNC_8DBC_(arg0, arg1)
						local function __FUNC_8F37_(arg0, arg1)
							local function __FUNC_908C_(arg0, arg1)
								local function __FUNC_9207_(arg0, arg1)
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
									__FUNC_9207_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9207_)
							end

							if arg1.interrupted then
								__FUNC_908C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_908C_)
						end

						if arg1.interrupted then
							__FUNC_8F37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F37_)
					end

					if arg1.interrupted then
						__FUNC_8DBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DBC_)
				end

				if arg1.interrupted then
					__FUNC_8C67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C67_)
			end

			if arg1.interrupted then
				__FUNC_8AEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AEC_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8995_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_5CB2_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_93B9_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
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
		registerVal16:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal17.Glow:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.purchase.Glow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_93B9_
	local function __FUNC_9A14_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9DF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_9DF1_(registerVal4, {})
		local function __FUNC_9FA5_(arg0, arg1)
			local function __FUNC_A0FC_(arg0, arg1)
				local function __FUNC_A277_(arg0, arg1)
					local function __FUNC_A3CC_(arg0, arg1)
						local function __FUNC_A547_(arg0, arg1)
							local function __FUNC_A69C_(arg0, arg1)
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
								__FUNC_A69C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A69C_)
						end

						if arg1.interrupted then
							__FUNC_A547_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A547_)
					end

					if arg1.interrupted then
						__FUNC_A3CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3CC_)
				end

				if arg1.interrupted then
					__FUNC_A277_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A277_)
			end

			if arg1.interrupted then
				__FUNC_A0FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0FC_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_9FA5_(registerVal11, {})
		local function __FUNC_A851_(arg0, arg1)
			local function __FUNC_A9A8_(arg0, arg1)
				local function __FUNC_AB23_(arg0, arg1)
					local function __FUNC_AC78_(arg0, arg1)
						local function __FUNC_ADF3_(arg0, arg1)
							local function __FUNC_AF48_(arg0, arg1)
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
								__FUNC_AF48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF48_)
						end

						if arg1.interrupted then
							__FUNC_ADF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADF3_)
					end

					if arg1.interrupted then
						__FUNC_AC78_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC78_)
				end

				if arg1.interrupted then
					__FUNC_AB23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB23_)
			end

			if arg1.interrupted then
				__FUNC_A9A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9A8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A851_(registerVal12, {})
		local function __FUNC_B0FD_(arg0, arg1)
			local function __FUNC_B254_(arg0, arg1)
				local function __FUNC_B3CF_(arg0, arg1)
					local function __FUNC_B547_(arg0, arg1)
						local function __FUNC_B6BF_(arg0, arg1)
							local function __FUNC_B814_(arg0, arg1)
								local function __FUNC_B98F_(arg0, arg1)
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
									__FUNC_B98F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B98F_)
							end

							if arg1.interrupted then
								__FUNC_B814_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B814_)
						end

						if arg1.interrupted then
							__FUNC_B6BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6BF_)
					end

					if arg1.interrupted then
						__FUNC_B547_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B547_)
				end

				if arg1.interrupted then
					__FUNC_B3CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3CF_)
			end

			if arg1.interrupted then
				__FUNC_B254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B254_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B0FD_(registerVal13, {})
		local function __FUNC_BB41_(arg0, arg1)
			local function __FUNC_BC98_(arg0, arg1)
				local function __FUNC_BE13_(arg0, arg1)
					local function __FUNC_BF68_(arg0, arg1)
						local function __FUNC_C0E3_(arg0, arg1)
							local function __FUNC_C238_(arg0, arg1)
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
								__FUNC_C238_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C238_)
						end

						if arg1.interrupted then
							__FUNC_C0E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0E3_)
					end

					if arg1.interrupted then
						__FUNC_BF68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF68_)
				end

				if arg1.interrupted then
					__FUNC_BE13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE13_)
			end

			if arg1.interrupted then
				__FUNC_BC98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC98_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_BB41_(registerVal14, {})
		local function __FUNC_C3ED_(arg0, arg1)
			local function __FUNC_C544_(arg0, arg1)
				local function __FUNC_C6BF_(arg0, arg1)
					local function __FUNC_C814_(arg0, arg1)
						local function __FUNC_C98F_(arg0, arg1)
							local function __FUNC_CAE4_(arg0, arg1)
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
								__FUNC_CAE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAE4_)
						end

						if arg1.interrupted then
							__FUNC_C98F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C98F_)
					end

					if arg1.interrupted then
						__FUNC_C814_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C814_)
				end

				if arg1.interrupted then
					__FUNC_C6BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6BF_)
			end

			if arg1.interrupted then
				__FUNC_C544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C544_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C3ED_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.GainFocus = __FUNC_9A14_
	local function __FUNC_CC99_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal16:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.Focus = __FUNC_CC99_
	local function __FUNC_D028_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_D405_(arg0, arg1)
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
		__FUNC_D405_(registerVal4, {})
		local function __FUNC_D5B9_(arg0, arg1)
			local function __FUNC_D733_(arg0, arg1)
				local function __FUNC_D8AB_(arg0, arg1)
					local function __FUNC_DA23_(arg0, arg1)
						local function __FUNC_DB78_(arg0, arg1)
							local function __FUNC_DCF3_(arg0, arg1)
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
								__FUNC_DCF3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCF3_)
						end

						if arg1.interrupted then
							__FUNC_DB78_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB78_)
					end

					if arg1.interrupted then
						__FUNC_DA23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA23_)
				end

				if arg1.interrupted then
					__FUNC_D8AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8AB_)
			end

			if arg1.interrupted then
				__FUNC_D733_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D733_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_D5B9_(registerVal11, {})
		local function __FUNC_DEA5_(arg0, arg1)
			local function __FUNC_E01F_(arg0, arg1)
				local function __FUNC_E197_(arg0, arg1)
					local function __FUNC_E30F_(arg0, arg1)
						local function __FUNC_E464_(arg0, arg1)
							local function __FUNC_E5DF_(arg0, arg1)
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
								__FUNC_E5DF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5DF_)
						end

						if arg1.interrupted then
							__FUNC_E464_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E464_)
					end

					if arg1.interrupted then
						__FUNC_E30F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E30F_)
				end

				if arg1.interrupted then
					__FUNC_E197_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E197_)
			end

			if arg1.interrupted then
				__FUNC_E01F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E01F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_DEA5_(registerVal12, {})
		local function __FUNC_E791_(arg0, arg1)
			local function __FUNC_E8E8_(arg0, arg1)
				local function __FUNC_EA63_(arg0, arg1)
					local function __FUNC_EBDB_(arg0, arg1)
						local function __FUNC_ED53_(arg0, arg1)
							local function __FUNC_EEA8_(arg0, arg1)
								local function __FUNC_F023_(arg0, arg1)
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
									__FUNC_F023_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F023_)
							end

							if arg1.interrupted then
								__FUNC_EEA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEA8_)
						end

						if arg1.interrupted then
							__FUNC_ED53_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED53_)
					end

					if arg1.interrupted then
						__FUNC_EBDB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBDB_)
				end

				if arg1.interrupted then
					__FUNC_EA63_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA63_)
			end

			if arg1.interrupted then
				__FUNC_E8E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8E8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_E791_(registerVal13, {})
		local function __FUNC_F1D5_(arg0, arg1)
			local function __FUNC_F32C_(arg0, arg1)
				local function __FUNC_F4A7_(arg0, arg1)
					local function __FUNC_F5FC_(arg0, arg1)
						local function __FUNC_F777_(arg0, arg1)
							local function __FUNC_F8CC_(arg0, arg1)
								local function __FUNC_FA47_(arg0, arg1)
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
									__FUNC_FA47_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA47_)
							end

							if arg1.interrupted then
								__FUNC_F8CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8CC_)
						end

						if arg1.interrupted then
							__FUNC_F777_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F777_)
					end

					if arg1.interrupted then
						__FUNC_F5FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5FC_)
				end

				if arg1.interrupted then
					__FUNC_F4A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4A7_)
			end

			if arg1.interrupted then
				__FUNC_F32C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F32C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F1D5_(registerVal14, {})
		local function __FUNC_FBF9_(arg0, arg1)
			local function __FUNC_FD50_(arg0, arg1)
				local function __FUNC_FECB_(arg0, arg1)
					local function __FUNC_10020_(arg0, arg1)
						local function __FUNC_1019B_(arg0, arg1)
							local function __FUNC_102F0_(arg0, arg1)
								local function __FUNC_1046B_(arg0, arg1)
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
									__FUNC_1046B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1046B_)
							end

							if arg1.interrupted then
								__FUNC_102F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102F0_)
						end

						if arg1.interrupted then
							__FUNC_1019B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1019B_)
					end

					if arg1.interrupted then
						__FUNC_10020_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10020_)
				end

				if arg1.interrupted then
					__FUNC_FECB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FECB_)
			end

			if arg1.interrupted then
				__FUNC_FD50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD50_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_FBF9_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.LoseFocus = __FUNC_D028_
	registerVal18.Purchased = registerVal19
	registerVal19 = {}
	local function __FUNC_1061D_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
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
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price.StorePriceLabel.Panel:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.purchase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1061D_
	local function __FUNC_10D2A_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1129E_(arg0, arg1)
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
		__FUNC_1129E_(registerVal4, {})
		local function __FUNC_11451_(arg0, arg1)
			local function __FUNC_115A8_(arg0, arg1)
				local function __FUNC_11723_(arg0, arg1)
					local function __FUNC_11878_(arg0, arg1)
						local function __FUNC_119F3_(arg0, arg1)
							local function __FUNC_11B48_(arg0, arg1)
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
								__FUNC_11B48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B48_)
						end

						if arg1.interrupted then
							__FUNC_119F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119F3_)
					end

					if arg1.interrupted then
						__FUNC_11878_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11878_)
				end

				if arg1.interrupted then
					__FUNC_11723_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11723_)
			end

			if arg1.interrupted then
				__FUNC_115A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115A8_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_11451_(registerVal11, {})
		local function __FUNC_11CFD_(arg0, arg1)
			local function __FUNC_11E54_(arg0, arg1)
				local function __FUNC_11FCF_(arg0, arg1)
					local function __FUNC_12124_(arg0, arg1)
						local function __FUNC_1229F_(arg0, arg1)
							local function __FUNC_123F4_(arg0, arg1)
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
								__FUNC_123F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123F4_)
						end

						if arg1.interrupted then
							__FUNC_1229F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1229F_)
					end

					if arg1.interrupted then
						__FUNC_12124_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12124_)
				end

				if arg1.interrupted then
					__FUNC_11FCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FCF_)
			end

			if arg1.interrupted then
				__FUNC_11E54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E54_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_11CFD_(registerVal12, {})
		local function __FUNC_125A9_(arg0, arg1)
			local function __FUNC_12700_(arg0, arg1)
				local function __FUNC_1287B_(arg0, arg1)
					local function __FUNC_129F3_(arg0, arg1)
						local function __FUNC_12B6B_(arg0, arg1)
							local function __FUNC_12CC0_(arg0, arg1)
								local function __FUNC_12E3B_(arg0, arg1)
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
									__FUNC_12E3B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E3B_)
							end

							if arg1.interrupted then
								__FUNC_12CC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CC0_)
						end

						if arg1.interrupted then
							__FUNC_12B6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B6B_)
					end

					if arg1.interrupted then
						__FUNC_129F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129F3_)
				end

				if arg1.interrupted then
					__FUNC_1287B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1287B_)
			end

			if arg1.interrupted then
				__FUNC_12700_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12700_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_125A9_(registerVal13, {})
		local function __FUNC_12FED_(arg0, arg1)
			local function __FUNC_13144_(arg0, arg1)
				local function __FUNC_132BF_(arg0, arg1)
					local function __FUNC_13414_(arg0, arg1)
						local function __FUNC_1358F_(arg0, arg1)
							local function __FUNC_136E4_(arg0, arg1)
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
								__FUNC_136E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136E4_)
						end

						if arg1.interrupted then
							__FUNC_1358F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1358F_)
					end

					if arg1.interrupted then
						__FUNC_13414_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13414_)
				end

				if arg1.interrupted then
					__FUNC_132BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132BF_)
			end

			if arg1.interrupted then
				__FUNC_13144_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13144_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_12FED_(registerVal14, {})
		local function __FUNC_13899_(arg0, arg1)
			local function __FUNC_139F0_(arg0, arg1)
				local function __FUNC_13B6B_(arg0, arg1)
					local function __FUNC_13CC0_(arg0, arg1)
						local function __FUNC_13E3B_(arg0, arg1)
							local function __FUNC_13F90_(arg0, arg1)
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
								__FUNC_13F90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F90_)
						end

						if arg1.interrupted then
							__FUNC_13E3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E3B_)
					end

					if arg1.interrupted then
						__FUNC_13CC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CC0_)
				end

				if arg1.interrupted then
					__FUNC_13B6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B6B_)
			end

			if arg1.interrupted then
				__FUNC_139F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139F0_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_13899_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_10D2A_
	local function __FUNC_14145_()
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
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_14145_
	local function __FUNC_145D0_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_14B46_(arg0, arg1)
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
		__FUNC_14B46_(registerVal4, {})
		local function __FUNC_14CF9_(arg0, arg1)
			local function __FUNC_14E73_(arg0, arg1)
				local function __FUNC_14FEB_(arg0, arg1)
					local function __FUNC_15163_(arg0, arg1)
						local function __FUNC_152B8_(arg0, arg1)
							local function __FUNC_15433_(arg0, arg1)
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
								__FUNC_15433_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15433_)
						end

						if arg1.interrupted then
							__FUNC_152B8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152B8_)
					end

					if arg1.interrupted then
						__FUNC_15163_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15163_)
				end

				if arg1.interrupted then
					__FUNC_14FEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FEB_)
			end

			if arg1.interrupted then
				__FUNC_14E73_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E73_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_14CF9_(registerVal11, {})
		local function __FUNC_155E5_(arg0, arg1)
			local function __FUNC_1575F_(arg0, arg1)
				local function __FUNC_158D7_(arg0, arg1)
					local function __FUNC_15A4F_(arg0, arg1)
						local function __FUNC_15BA4_(arg0, arg1)
							local function __FUNC_15D1F_(arg0, arg1)
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
								__FUNC_15D1F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D1F_)
						end

						if arg1.interrupted then
							__FUNC_15BA4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BA4_)
					end

					if arg1.interrupted then
						__FUNC_15A4F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A4F_)
				end

				if arg1.interrupted then
					__FUNC_158D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158D7_)
			end

			if arg1.interrupted then
				__FUNC_1575F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1575F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_155E5_(registerVal12, {})
		local function __FUNC_15ED1_(arg0, arg1)
			local function __FUNC_16028_(arg0, arg1)
				local function __FUNC_161A3_(arg0, arg1)
					local function __FUNC_1631B_(arg0, arg1)
						local function __FUNC_16493_(arg0, arg1)
							local function __FUNC_165E8_(arg0, arg1)
								local function __FUNC_16763_(arg0, arg1)
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
									__FUNC_16763_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16763_)
							end

							if arg1.interrupted then
								__FUNC_165E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165E8_)
						end

						if arg1.interrupted then
							__FUNC_16493_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16493_)
					end

					if arg1.interrupted then
						__FUNC_1631B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1631B_)
				end

				if arg1.interrupted then
					__FUNC_161A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161A3_)
			end

			if arg1.interrupted then
				__FUNC_16028_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16028_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_15ED1_(registerVal13, {})
		local function __FUNC_16915_(arg0, arg1)
			local function __FUNC_16A6C_(arg0, arg1)
				local function __FUNC_16BE7_(arg0, arg1)
					local function __FUNC_16D3C_(arg0, arg1)
						local function __FUNC_16EB7_(arg0, arg1)
							local function __FUNC_1700C_(arg0, arg1)
								local function __FUNC_17187_(arg0, arg1)
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
									__FUNC_17187_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17187_)
							end

							if arg1.interrupted then
								__FUNC_1700C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1700C_)
						end

						if arg1.interrupted then
							__FUNC_16EB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EB7_)
					end

					if arg1.interrupted then
						__FUNC_16D3C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D3C_)
				end

				if arg1.interrupted then
					__FUNC_16BE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BE7_)
			end

			if arg1.interrupted then
				__FUNC_16A6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A6C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_16915_(registerVal14, {})
		local function __FUNC_17339_(arg0, arg1)
			local function __FUNC_17490_(arg0, arg1)
				local function __FUNC_1760B_(arg0, arg1)
					local function __FUNC_17760_(arg0, arg1)
						local function __FUNC_178DB_(arg0, arg1)
							local function __FUNC_17A30_(arg0, arg1)
								local function __FUNC_17BAB_(arg0, arg1)
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
									__FUNC_17BAB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BAB_)
							end

							if arg1.interrupted then
								__FUNC_17A30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A30_)
						end

						if arg1.interrupted then
							__FUNC_178DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_178DB_)
					end

					if arg1.interrupted then
						__FUNC_17760_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17760_)
				end

				if arg1.interrupted then
					__FUNC_1760B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1760B_)
			end

			if arg1.interrupted then
				__FUNC_17490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17490_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_17339_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_145D0_
	registerVal18.Sale = registerVal19
	registerVal2.clipsPerState = registerVal18
	registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Purchased"
	local function __FUNC_17D5D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
	end

	registerVal21.condition = __FUNC_17D5D_
	local registerVal22 = {}
	registerVal22.stateName = "Sale"
	local function __FUNC_17E4C_(arg0, arg2, arg3)
		return IsCodPointsSaleActivated(arg2, arg1)
	end

	registerVal22.condition = __FUNC_17E4C_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_17EAE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "purchasestatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "purchasestatus", true, __FUNC_17EAE_)
	local function __FUNC_17FD0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "metadata"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "metadata", true, __FUNC_17FD0_)
	registerVal7.id = "frameWidget"
	local function __FUNC_180EE_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.productName:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.price:close()
		arg0.purchase:close()
		arg0.frameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_180EE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

