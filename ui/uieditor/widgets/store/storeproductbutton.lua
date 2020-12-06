-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Store.StoreProductNameLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Store.StorePriceContainer")
require("ui.uieditor.widgets.Store.StorePriceLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreProductButton = registerVal1
function CoD.StoreProductButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreProductButton)
	registerVal2.id = "StoreProductButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 137.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal4:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal4:setAlpha(0.800000)
	local function __FUNC_1311_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "previewImage", true, __FUNC_1311_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemImage = registerVal4
	local registerVal5 = CoD.StoreProductNameLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 240.000000)
	registerVal5:setTopBottom(false, true, -28.000000, 0.000000)
	registerVal5.Panel:setAlpha(0.750000)
	local function __FUNC_13C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_13C4_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hide"
	local function __FUNC_149C_(arg0, arg1, arg2)
		return HideProductNameAndDesc()
	end

	registerVal9.condition = __FUNC_149C_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.productName = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal6:setRGB(1.000000, 0.410000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal6)
	registerVal2.alertIcon = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal7:setRGB(0.560000, 0.680000, 0.270000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal7)
	registerVal2.equippedIcon = registerVal7
	registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = CoD.StorePriceContainer.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -81.000000, -2.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal10.StorePriceLabel.Glow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal10.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
	local function __FUNC_14F4_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_14F4_)
	local function __FUNC_1546_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.StorePriceLabel.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "price", true, __FUNC_1546_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Hide"
	local function __FUNC_1641_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "price")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1641_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_16BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "price"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "price", true, __FUNC_16BF_)
	registerVal2:addElement(registerVal10)
	registerVal2.price = registerVal10
	local registerVal11 = CoD.StorePriceLabel.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -82.000000, -2.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11.Panel:setAlpha(0.850000)
	registerVal11.Glow:setRGB(0.990000, 1.000000, 0.040000)
	registerVal11.Glow:setAlpha(0.250000)
	registerVal11.itemName:setRGB(1.000000, 0.990000, 0.040000)
	registerVal11.itemName:setText(Engine.Localize("MENU_STORE_OFFER_PURCHASED"))
	registerVal2:addElement(registerVal11)
	registerVal2.purchase = registerVal11
	local registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_17D7_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.purchase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_17D7_
	local function __FUNC_1D18_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2107_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_2107_(registerVal4, {})
		local function __FUNC_22B9_(arg0, arg1)
			local function __FUNC_2410_(arg0, arg1)
				local function __FUNC_258B_(arg0, arg1)
					local function __FUNC_26E0_(arg0, arg1)
						local function __FUNC_285B_(arg0, arg1)
							local function __FUNC_29B0_(arg0, arg1)
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
								__FUNC_29B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29B0_)
						end

						if arg1.interrupted then
							__FUNC_285B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_285B_)
					end

					if arg1.interrupted then
						__FUNC_26E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26E0_)
				end

				if arg1.interrupted then
					__FUNC_258B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_258B_)
			end

			if arg1.interrupted then
				__FUNC_2410_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2410_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_22B9_(registerVal8, {})
		local function __FUNC_2B65_(arg0, arg1)
			local function __FUNC_2CBC_(arg0, arg1)
				local function __FUNC_2E37_(arg0, arg1)
					local function __FUNC_2F8C_(arg0, arg1)
						local function __FUNC_3107_(arg0, arg1)
							local function __FUNC_325C_(arg0, arg1)
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
								__FUNC_325C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_325C_)
						end

						if arg1.interrupted then
							__FUNC_3107_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3107_)
					end

					if arg1.interrupted then
						__FUNC_2F8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F8C_)
				end

				if arg1.interrupted then
					__FUNC_2E37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E37_)
			end

			if arg1.interrupted then
				__FUNC_2CBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBC_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2B65_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.GainFocus = __FUNC_1D18_
	local function __FUNC_3411_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.Focus = __FUNC_3411_
	local function __FUNC_37CA_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_3BB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_3BB7_(registerVal4, {})
		local function __FUNC_3D69_(arg0, arg1)
			local function __FUNC_3EE3_(arg0, arg1)
				local function __FUNC_405B_(arg0, arg1)
					local function __FUNC_41D3_(arg0, arg1)
						local function __FUNC_4328_(arg0, arg1)
							local function __FUNC_44A3_(arg0, arg1)
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
								__FUNC_44A3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44A3_)
						end

						if arg1.interrupted then
							__FUNC_4328_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4328_)
					end

					if arg1.interrupted then
						__FUNC_41D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41D3_)
				end

				if arg1.interrupted then
					__FUNC_405B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_405B_)
			end

			if arg1.interrupted then
				__FUNC_3EE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EE3_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3D69_(registerVal8, {})
		local function __FUNC_4655_(arg0, arg1)
			local function __FUNC_47CF_(arg0, arg1)
				local function __FUNC_4947_(arg0, arg1)
					local function __FUNC_4ABF_(arg0, arg1)
						local function __FUNC_4C14_(arg0, arg1)
							local function __FUNC_4D8F_(arg0, arg1)
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
								__FUNC_4D8F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D8F_)
						end

						if arg1.interrupted then
							__FUNC_4C14_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C14_)
					end

					if arg1.interrupted then
						__FUNC_4ABF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ABF_)
				end

				if arg1.interrupted then
					__FUNC_4947_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4947_)
			end

			if arg1.interrupted then
				__FUNC_47CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47CF_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4655_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.040000, 0.800000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.LoseFocus = __FUNC_37CA_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_4F41_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.Glow:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.purchase.Glow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_4F41_
	local function __FUNC_55A3_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5A70_(arg0, arg1)
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
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_5A70_(registerVal4, {})
		local function __FUNC_5C25_(arg0, arg1)
			local function __FUNC_5D7C_(arg0, arg1)
				local function __FUNC_5EF7_(arg0, arg1)
					local function __FUNC_604C_(arg0, arg1)
						local function __FUNC_61C7_(arg0, arg1)
							local function __FUNC_631C_(arg0, arg1)
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
								__FUNC_631C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_631C_)
						end

						if arg1.interrupted then
							__FUNC_61C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61C7_)
					end

					if arg1.interrupted then
						__FUNC_604C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_604C_)
				end

				if arg1.interrupted then
					__FUNC_5EF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EF7_)
			end

			if arg1.interrupted then
				__FUNC_5D7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D7C_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_5C25_(registerVal8, {})
		local function __FUNC_64D1_(arg0, arg1)
			local function __FUNC_6628_(arg0, arg1)
				local function __FUNC_67A3_(arg0, arg1)
					local function __FUNC_68F8_(arg0, arg1)
						local function __FUNC_6A73_(arg0, arg1)
							local function __FUNC_6BC8_(arg0, arg1)
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
								__FUNC_6BC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BC8_)
						end

						if arg1.interrupted then
							__FUNC_6A73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A73_)
					end

					if arg1.interrupted then
						__FUNC_68F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68F8_)
				end

				if arg1.interrupted then
					__FUNC_67A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67A3_)
			end

			if arg1.interrupted then
				__FUNC_6628_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6628_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_64D1_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_55A3_
	local function __FUNC_6D7D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_6D7D_
	local function __FUNC_72E0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_77AB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_77AB_(registerVal4, {})
		local function __FUNC_795D_(arg0, arg1)
			local function __FUNC_7AD7_(arg0, arg1)
				local function __FUNC_7C4F_(arg0, arg1)
					local function __FUNC_7DC7_(arg0, arg1)
						local function __FUNC_7F1C_(arg0, arg1)
							local function __FUNC_8097_(arg0, arg1)
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
								__FUNC_8097_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8097_)
						end

						if arg1.interrupted then
							__FUNC_7F1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F1C_)
					end

					if arg1.interrupted then
						__FUNC_7DC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DC7_)
				end

				if arg1.interrupted then
					__FUNC_7C4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C4F_)
			end

			if arg1.interrupted then
				__FUNC_7AD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AD7_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_795D_(registerVal8, {})
		local function __FUNC_8249_(arg0, arg1)
			local function __FUNC_83C3_(arg0, arg1)
				local function __FUNC_853B_(arg0, arg1)
					local function __FUNC_86B3_(arg0, arg1)
						local function __FUNC_8808_(arg0, arg1)
							local function __FUNC_8983_(arg0, arg1)
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
								__FUNC_8983_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8983_)
						end

						if arg1.interrupted then
							__FUNC_8808_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8808_)
					end

					if arg1.interrupted then
						__FUNC_86B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86B3_)
				end

				if arg1.interrupted then
					__FUNC_853B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_853B_)
			end

			if arg1.interrupted then
				__FUNC_83C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83C3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_8249_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_72E0_
	registerVal12.Purchased = registerVal13
	registerVal13 = {}
	local function __FUNC_8B35_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.purchase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_8B35_
	local function __FUNC_9146_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_9601_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_9601_(registerVal4, {})
		local function __FUNC_97B5_(arg0, arg1)
			local function __FUNC_990C_(arg0, arg1)
				local function __FUNC_9A87_(arg0, arg1)
					local function __FUNC_9BDC_(arg0, arg1)
						local function __FUNC_9D57_(arg0, arg1)
							local function __FUNC_9EAC_(arg0, arg1)
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
								__FUNC_9EAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EAC_)
						end

						if arg1.interrupted then
							__FUNC_9D57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D57_)
					end

					if arg1.interrupted then
						__FUNC_9BDC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BDC_)
				end

				if arg1.interrupted then
					__FUNC_9A87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A87_)
			end

			if arg1.interrupted then
				__FUNC_990C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_990C_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_97B5_(registerVal8, {})
		local function __FUNC_A061_(arg0, arg1)
			local function __FUNC_A1B8_(arg0, arg1)
				local function __FUNC_A333_(arg0, arg1)
					local function __FUNC_A488_(arg0, arg1)
						local function __FUNC_A603_(arg0, arg1)
							local function __FUNC_A758_(arg0, arg1)
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
								__FUNC_A758_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A758_)
						end

						if arg1.interrupted then
							__FUNC_A603_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A603_)
					end

					if arg1.interrupted then
						__FUNC_A488_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A488_)
				end

				if arg1.interrupted then
					__FUNC_A333_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A333_)
			end

			if arg1.interrupted then
				__FUNC_A1B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1B8_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A061_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.GainFocus = __FUNC_9146_
	local function __FUNC_A90D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.Focus = __FUNC_A90D_
	local function __FUNC_ADD0_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_B288_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_B288_(registerVal4, {})
		local function __FUNC_B43D_(arg0, arg1)
			local function __FUNC_B5B7_(arg0, arg1)
				local function __FUNC_B72F_(arg0, arg1)
					local function __FUNC_B8A7_(arg0, arg1)
						local function __FUNC_B9FC_(arg0, arg1)
							local function __FUNC_BB77_(arg0, arg1)
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
								__FUNC_BB77_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB77_)
						end

						if arg1.interrupted then
							__FUNC_B9FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9FC_)
					end

					if arg1.interrupted then
						__FUNC_B8A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8A7_)
				end

				if arg1.interrupted then
					__FUNC_B72F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B72F_)
			end

			if arg1.interrupted then
				__FUNC_B5B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5B7_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_B43D_(registerVal8, {})
		local function __FUNC_BD29_(arg0, arg1)
			local function __FUNC_BEA3_(arg0, arg1)
				local function __FUNC_C01B_(arg0, arg1)
					local function __FUNC_C193_(arg0, arg1)
						local function __FUNC_C2E8_(arg0, arg1)
							local function __FUNC_C463_(arg0, arg1)
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
								__FUNC_C463_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C463_)
						end

						if arg1.interrupted then
							__FUNC_C2E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2E8_)
					end

					if arg1.interrupted then
						__FUNC_C193_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C193_)
				end

				if arg1.interrupted then
					__FUNC_C01B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C01B_)
			end

			if arg1.interrupted then
				__FUNC_BEA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEA3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_BD29_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.StorePriceLabel.Panel:completeAnimation()
		registerVal10.StorePriceLabel.Glow:completeAnimation()
		registerVal10.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.350000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.LoseFocus = __FUNC_ADD0_
	registerVal12.Sale = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Purchased"
	local function __FUNC_C615_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
	end

	registerVal15.condition = __FUNC_C615_
	local registerVal16 = {}
	registerVal16.stateName = "Sale"
	local function __FUNC_C704_(arg0, arg2, arg3)
		return IsCodPointsSaleActivated(arg2, arg1)
	end

	registerVal16.condition = __FUNC_C704_
	registerVal14 = {registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_C766_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "purchasestatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "purchasestatus", true, __FUNC_C766_)
	local function __FUNC_C888_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "metadata"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "metadata", true, __FUNC_C888_)
	local function __FUNC_C9A6_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.productName:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.price:close()
		arg0.purchase:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C9A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

