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
CoD.StoreFeaturedCenterButton = registerVal1
function CoD.StoreFeaturedCenterButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreFeaturedCenterButton)
	registerVal2.id = "StoreFeaturedCenterButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 576.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 384.000000)
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
	local registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal7:setTopBottom(true, true, 1.000000, -1.000000)
	local function __FUNC_193B_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_193B_)
	local function __FUNC_198A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_198A_)
	registerVal2:addElement(registerVal7)
	registerVal2.frameWidget = registerVal7
	local registerVal8 = CoD.StoreProductNameLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 1.000000, 562.000000)
	registerVal8:setTopBottom(false, true, -28.000000, 0.000000)
	registerVal8.Panel:setAlpha(0.750000)
	local function __FUNC_1A26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_1A26_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hide"
	local function __FUNC_1AFC_(arg0, arg1, arg2)
		return HideProductNameAndDesc()
	end

	registerVal12.condition = __FUNC_1AFC_
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
	local function __FUNC_1B54_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_1B54_)
	local function __FUNC_1BA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.StorePriceLabel.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal2, "price", true, __FUNC_1BA6_)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Hide"
	local function __FUNC_1CA1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "price")
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_1CA1_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_1D1F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "price"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "price", true, __FUNC_1D1F_)
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
	local function __FUNC_1E37_()
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

	registerVal19.DefaultClip = __FUNC_1E37_
	local function __FUNC_2547_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2A34_(arg0, arg1)
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
		__FUNC_2A34_(registerVal4, {})
		local function __FUNC_2BE9_(arg0, arg1)
			local function __FUNC_2D63_(arg0, arg1)
				local function __FUNC_2EDB_(arg0, arg1)
					local function __FUNC_3030_(arg0, arg1)
						local function __FUNC_31AB_(arg0, arg1)
							local function __FUNC_3300_(arg0, arg1)
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
								__FUNC_3300_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3300_)
						end

						if arg1.interrupted then
							__FUNC_31AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31AB_)
					end

					if arg1.interrupted then
						__FUNC_3030_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3030_)
				end

				if arg1.interrupted then
					__FUNC_2EDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EDB_)
			end

			if arg1.interrupted then
				__FUNC_2D63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D63_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2BE9_(registerVal11, {})
		local function __FUNC_34B5_(arg0, arg1)
			local function __FUNC_362F_(arg0, arg1)
				local function __FUNC_37A7_(arg0, arg1)
					local function __FUNC_38FC_(arg0, arg1)
						local function __FUNC_3A77_(arg0, arg1)
							local function __FUNC_3BCC_(arg0, arg1)
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
								__FUNC_3BCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCC_)
						end

						if arg1.interrupted then
							__FUNC_3A77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A77_)
					end

					if arg1.interrupted then
						__FUNC_38FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FC_)
				end

				if arg1.interrupted then
					__FUNC_37A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37A7_)
			end

			if arg1.interrupted then
				__FUNC_362F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_362F_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_34B5_(registerVal12, {})
		local function __FUNC_3D81_(arg0, arg1)
			local function __FUNC_3ED8_(arg0, arg1)
				local function __FUNC_4053_(arg0, arg1)
					local function __FUNC_41CB_(arg0, arg1)
						local function __FUNC_4343_(arg0, arg1)
							local function __FUNC_4498_(arg0, arg1)
								local function __FUNC_4613_(arg0, arg1)
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
									__FUNC_4613_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4613_)
							end

							if arg1.interrupted then
								__FUNC_4498_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4498_)
						end

						if arg1.interrupted then
							__FUNC_4343_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4343_)
					end

					if arg1.interrupted then
						__FUNC_41CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CB_)
				end

				if arg1.interrupted then
					__FUNC_4053_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4053_)
			end

			if arg1.interrupted then
				__FUNC_3ED8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3D81_(registerVal13, {})
		local function __FUNC_47C5_(arg0, arg1)
			local function __FUNC_491C_(arg0, arg1)
				local function __FUNC_4A97_(arg0, arg1)
					local function __FUNC_4BEC_(arg0, arg1)
						local function __FUNC_4D67_(arg0, arg1)
							local function __FUNC_4EBC_(arg0, arg1)
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
								__FUNC_4EBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EBC_)
						end

						if arg1.interrupted then
							__FUNC_4D67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D67_)
					end

					if arg1.interrupted then
						__FUNC_4BEC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BEC_)
				end

				if arg1.interrupted then
					__FUNC_4A97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A97_)
			end

			if arg1.interrupted then
				__FUNC_491C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_491C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_47C5_(registerVal14, {})
		local function __FUNC_5071_(arg0, arg1)
			local function __FUNC_51C8_(arg0, arg1)
				local function __FUNC_5343_(arg0, arg1)
					local function __FUNC_5498_(arg0, arg1)
						local function __FUNC_5613_(arg0, arg1)
							local function __FUNC_5768_(arg0, arg1)
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
								__FUNC_5768_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5768_)
						end

						if arg1.interrupted then
							__FUNC_5613_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5613_)
					end

					if arg1.interrupted then
						__FUNC_5498_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5498_)
				end

				if arg1.interrupted then
					__FUNC_5343_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5343_)
			end

			if arg1.interrupted then
				__FUNC_51C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51C8_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_5071_(registerVal15, {})
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

	registerVal19.GainFocus = __FUNC_2547_
	local function __FUNC_591D_()
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

	registerVal19.Focus = __FUNC_591D_
	local function __FUNC_5D22_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_6210_(arg0, arg1)
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
		__FUNC_6210_(registerVal4, {})
		local function __FUNC_63C5_(arg0, arg1)
			local function __FUNC_653F_(arg0, arg1)
				local function __FUNC_66B7_(arg0, arg1)
					local function __FUNC_682F_(arg0, arg1)
						local function __FUNC_6984_(arg0, arg1)
							local function __FUNC_6AFF_(arg0, arg1)
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
								__FUNC_6AFF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AFF_)
						end

						if arg1.interrupted then
							__FUNC_6984_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6984_)
					end

					if arg1.interrupted then
						__FUNC_682F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_682F_)
				end

				if arg1.interrupted then
					__FUNC_66B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66B7_)
			end

			if arg1.interrupted then
				__FUNC_653F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_653F_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_63C5_(registerVal11, {})
		local function __FUNC_6CB1_(arg0, arg1)
			local function __FUNC_6E2B_(arg0, arg1)
				local function __FUNC_6FA3_(arg0, arg1)
					local function __FUNC_711B_(arg0, arg1)
						local function __FUNC_7270_(arg0, arg1)
							local function __FUNC_73EB_(arg0, arg1)
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
								__FUNC_73EB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73EB_)
						end

						if arg1.interrupted then
							__FUNC_7270_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7270_)
					end

					if arg1.interrupted then
						__FUNC_711B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_711B_)
				end

				if arg1.interrupted then
					__FUNC_6FA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FA3_)
			end

			if arg1.interrupted then
				__FUNC_6E2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E2B_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6CB1_(registerVal12, {})
		local function __FUNC_759D_(arg0, arg1)
			local function __FUNC_76F4_(arg0, arg1)
				local function __FUNC_786F_(arg0, arg1)
					local function __FUNC_79E7_(arg0, arg1)
						local function __FUNC_7B5F_(arg0, arg1)
							local function __FUNC_7CB4_(arg0, arg1)
								local function __FUNC_7E2F_(arg0, arg1)
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
									__FUNC_7E2F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E2F_)
							end

							if arg1.interrupted then
								__FUNC_7CB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CB4_)
						end

						if arg1.interrupted then
							__FUNC_7B5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B5F_)
					end

					if arg1.interrupted then
						__FUNC_79E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79E7_)
				end

				if arg1.interrupted then
					__FUNC_786F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_786F_)
			end

			if arg1.interrupted then
				__FUNC_76F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76F4_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_759D_(registerVal13, {})
		local function __FUNC_7FE1_(arg0, arg1)
			local function __FUNC_8138_(arg0, arg1)
				local function __FUNC_82B3_(arg0, arg1)
					local function __FUNC_8408_(arg0, arg1)
						local function __FUNC_8583_(arg0, arg1)
							local function __FUNC_86D8_(arg0, arg1)
								local function __FUNC_8853_(arg0, arg1)
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
									__FUNC_8853_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8853_)
							end

							if arg1.interrupted then
								__FUNC_86D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86D8_)
						end

						if arg1.interrupted then
							__FUNC_8583_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8583_)
					end

					if arg1.interrupted then
						__FUNC_8408_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8408_)
				end

				if arg1.interrupted then
					__FUNC_82B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82B3_)
			end

			if arg1.interrupted then
				__FUNC_8138_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8138_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7FE1_(registerVal14, {})
		local function __FUNC_8A05_(arg0, arg1)
			local function __FUNC_8B5C_(arg0, arg1)
				local function __FUNC_8CD7_(arg0, arg1)
					local function __FUNC_8E2C_(arg0, arg1)
						local function __FUNC_8FA7_(arg0, arg1)
							local function __FUNC_90FC_(arg0, arg1)
								local function __FUNC_9277_(arg0, arg1)
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
									__FUNC_9277_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9277_)
							end

							if arg1.interrupted then
								__FUNC_90FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90FC_)
						end

						if arg1.interrupted then
							__FUNC_8FA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FA7_)
					end

					if arg1.interrupted then
						__FUNC_8E2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E2C_)
				end

				if arg1.interrupted then
					__FUNC_8CD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CD7_)
			end

			if arg1.interrupted then
				__FUNC_8B5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B5C_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8A05_(registerVal15, {})
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

	registerVal19.LoseFocus = __FUNC_5D22_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_9429_()
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
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(0.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal17.Glow:completeAnimation()
		registerVal2.purchase:setLeftRight(false, true, -68.000000, -1.000000)
		registerVal2.purchase:setTopBottom(true, false, 1.000000, 20.000000)
		registerVal2.purchase:setAlpha(1.000000)
		registerVal2.purchase.Glow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_9429_
	local function __FUNC_9C55_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_A13F_(arg0, arg1)
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
		__FUNC_A13F_(registerVal4, {})
		local function __FUNC_A2F1_(arg0, arg1)
			local function __FUNC_A448_(arg0, arg1)
				local function __FUNC_A5C3_(arg0, arg1)
					local function __FUNC_A718_(arg0, arg1)
						local function __FUNC_A893_(arg0, arg1)
							local function __FUNC_A9E8_(arg0, arg1)
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
								__FUNC_A9E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9E8_)
						end

						if arg1.interrupted then
							__FUNC_A893_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A893_)
					end

					if arg1.interrupted then
						__FUNC_A718_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A718_)
				end

				if arg1.interrupted then
					__FUNC_A5C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5C3_)
			end

			if arg1.interrupted then
				__FUNC_A448_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A448_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A2F1_(registerVal11, {})
		local function __FUNC_AB9D_(arg0, arg1)
			local function __FUNC_ACF4_(arg0, arg1)
				local function __FUNC_AE6F_(arg0, arg1)
					local function __FUNC_AFC4_(arg0, arg1)
						local function __FUNC_B13F_(arg0, arg1)
							local function __FUNC_B294_(arg0, arg1)
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
								__FUNC_B294_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B294_)
						end

						if arg1.interrupted then
							__FUNC_B13F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B13F_)
					end

					if arg1.interrupted then
						__FUNC_AFC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFC4_)
				end

				if arg1.interrupted then
					__FUNC_AE6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE6F_)
			end

			if arg1.interrupted then
				__FUNC_ACF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACF4_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_AB9D_(registerVal12, {})
		local function __FUNC_B449_(arg0, arg1)
			local function __FUNC_B5A0_(arg0, arg1)
				local function __FUNC_B71B_(arg0, arg1)
					local function __FUNC_B893_(arg0, arg1)
						local function __FUNC_BA0B_(arg0, arg1)
							local function __FUNC_BB60_(arg0, arg1)
								local function __FUNC_BCDB_(arg0, arg1)
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
									__FUNC_BCDB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCDB_)
							end

							if arg1.interrupted then
								__FUNC_BB60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB60_)
						end

						if arg1.interrupted then
							__FUNC_BA0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA0B_)
					end

					if arg1.interrupted then
						__FUNC_B893_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B893_)
				end

				if arg1.interrupted then
					__FUNC_B71B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B71B_)
			end

			if arg1.interrupted then
				__FUNC_B5A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5A0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B449_(registerVal13, {})
		local function __FUNC_BE8D_(arg0, arg1)
			local function __FUNC_BFE4_(arg0, arg1)
				local function __FUNC_C15F_(arg0, arg1)
					local function __FUNC_C2B4_(arg0, arg1)
						local function __FUNC_C42F_(arg0, arg1)
							local function __FUNC_C584_(arg0, arg1)
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
								__FUNC_C584_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C584_)
						end

						if arg1.interrupted then
							__FUNC_C42F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C42F_)
					end

					if arg1.interrupted then
						__FUNC_C2B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2B4_)
				end

				if arg1.interrupted then
					__FUNC_C15F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C15F_)
			end

			if arg1.interrupted then
				__FUNC_BFE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFE4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_BE8D_(registerVal14, {})
		local function __FUNC_C739_(arg0, arg1)
			local function __FUNC_C890_(arg0, arg1)
				local function __FUNC_CA0B_(arg0, arg1)
					local function __FUNC_CB60_(arg0, arg1)
						local function __FUNC_CCDB_(arg0, arg1)
							local function __FUNC_CE30_(arg0, arg1)
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
								__FUNC_CE30_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE30_)
						end

						if arg1.interrupted then
							__FUNC_CCDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCDB_)
					end

					if arg1.interrupted then
						__FUNC_CB60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB60_)
				end

				if arg1.interrupted then
					__FUNC_CA0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA0B_)
			end

			if arg1.interrupted then
				__FUNC_C890_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C890_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C739_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.GainFocus = __FUNC_9C55_
	local function __FUNC_CFE5_()
		registerVal2:setupElementClipCounter(5.000000)
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
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.Focus = __FUNC_CFE5_
	local function __FUNC_D472_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_D95B_(arg0, arg1)
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
		__FUNC_D95B_(registerVal4, {})
		local function __FUNC_DB0D_(arg0, arg1)
			local function __FUNC_DC87_(arg0, arg1)
				local function __FUNC_DDFF_(arg0, arg1)
					local function __FUNC_DF77_(arg0, arg1)
						local function __FUNC_E0CC_(arg0, arg1)
							local function __FUNC_E247_(arg0, arg1)
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
								__FUNC_E247_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E247_)
						end

						if arg1.interrupted then
							__FUNC_E0CC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0CC_)
					end

					if arg1.interrupted then
						__FUNC_DF77_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF77_)
				end

				if arg1.interrupted then
					__FUNC_DDFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDFF_)
			end

			if arg1.interrupted then
				__FUNC_DC87_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC87_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DB0D_(registerVal11, {})
		local function __FUNC_E3F9_(arg0, arg1)
			local function __FUNC_E573_(arg0, arg1)
				local function __FUNC_E6EB_(arg0, arg1)
					local function __FUNC_E863_(arg0, arg1)
						local function __FUNC_E9B8_(arg0, arg1)
							local function __FUNC_EB33_(arg0, arg1)
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
								__FUNC_EB33_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB33_)
						end

						if arg1.interrupted then
							__FUNC_E9B8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9B8_)
					end

					if arg1.interrupted then
						__FUNC_E863_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E863_)
				end

				if arg1.interrupted then
					__FUNC_E6EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6EB_)
			end

			if arg1.interrupted then
				__FUNC_E573_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E573_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E3F9_(registerVal12, {})
		local function __FUNC_ECE5_(arg0, arg1)
			local function __FUNC_EE3C_(arg0, arg1)
				local function __FUNC_EFB7_(arg0, arg1)
					local function __FUNC_F12F_(arg0, arg1)
						local function __FUNC_F2A7_(arg0, arg1)
							local function __FUNC_F3FC_(arg0, arg1)
								local function __FUNC_F577_(arg0, arg1)
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
									__FUNC_F577_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F577_)
							end

							if arg1.interrupted then
								__FUNC_F3FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3FC_)
						end

						if arg1.interrupted then
							__FUNC_F2A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2A7_)
					end

					if arg1.interrupted then
						__FUNC_F12F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F12F_)
				end

				if arg1.interrupted then
					__FUNC_EFB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFB7_)
			end

			if arg1.interrupted then
				__FUNC_EE3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE3C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_ECE5_(registerVal13, {})
		local function __FUNC_F729_(arg0, arg1)
			local function __FUNC_F880_(arg0, arg1)
				local function __FUNC_F9FB_(arg0, arg1)
					local function __FUNC_FB50_(arg0, arg1)
						local function __FUNC_FCCB_(arg0, arg1)
							local function __FUNC_FE20_(arg0, arg1)
								local function __FUNC_FF9B_(arg0, arg1)
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
									__FUNC_FF9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF9B_)
							end

							if arg1.interrupted then
								__FUNC_FE20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE20_)
						end

						if arg1.interrupted then
							__FUNC_FCCB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCCB_)
					end

					if arg1.interrupted then
						__FUNC_FB50_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB50_)
				end

				if arg1.interrupted then
					__FUNC_F9FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9FB_)
			end

			if arg1.interrupted then
				__FUNC_F880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F880_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F729_(registerVal14, {})
		local function __FUNC_1014D_(arg0, arg1)
			local function __FUNC_102A4_(arg0, arg1)
				local function __FUNC_1041F_(arg0, arg1)
					local function __FUNC_10574_(arg0, arg1)
						local function __FUNC_106EF_(arg0, arg1)
							local function __FUNC_10844_(arg0, arg1)
								local function __FUNC_109BF_(arg0, arg1)
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
									__FUNC_109BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109BF_)
							end

							if arg1.interrupted then
								__FUNC_10844_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10844_)
						end

						if arg1.interrupted then
							__FUNC_106EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106EF_)
					end

					if arg1.interrupted then
						__FUNC_10574_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10574_)
				end

				if arg1.interrupted then
					__FUNC_1041F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1041F_)
			end

			if arg1.interrupted then
				__FUNC_102A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102A4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1014D_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal16.StorePriceLabel.Panel:completeAnimation()
		registerVal16.StorePriceLabel.Glow:completeAnimation()
		registerVal16.StorePriceLabel.itemName:completeAnimation()
		registerVal2.price:setAlpha(1.000000)
		registerVal2.price.StorePriceLabel.Panel:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.price.StorePriceLabel.Panel:setAlpha(0.850000)
		registerVal2.price.StorePriceLabel.Glow:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.price.StorePriceLabel.Glow:setAlpha(0.250000)
		registerVal2.price.StorePriceLabel.itemName:setRGB(1.000000, 1.000000, 0.040000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal19.LoseFocus = __FUNC_D472_
	registerVal18.Purchased = registerVal19
	registerVal19 = {}
	local function __FUNC_10B71_()
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

	registerVal19.DefaultClip = __FUNC_10B71_
	local function __FUNC_1127E_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_117F2_(arg0, arg1)
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
		__FUNC_117F2_(registerVal4, {})
		local function __FUNC_119A5_(arg0, arg1)
			local function __FUNC_11AFC_(arg0, arg1)
				local function __FUNC_11C77_(arg0, arg1)
					local function __FUNC_11DCC_(arg0, arg1)
						local function __FUNC_11F47_(arg0, arg1)
							local function __FUNC_1209C_(arg0, arg1)
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
								__FUNC_1209C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1209C_)
						end

						if arg1.interrupted then
							__FUNC_11F47_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F47_)
					end

					if arg1.interrupted then
						__FUNC_11DCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DCC_)
				end

				if arg1.interrupted then
					__FUNC_11C77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C77_)
			end

			if arg1.interrupted then
				__FUNC_11AFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AFC_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_119A5_(registerVal11, {})
		local function __FUNC_12251_(arg0, arg1)
			local function __FUNC_123A8_(arg0, arg1)
				local function __FUNC_12523_(arg0, arg1)
					local function __FUNC_12678_(arg0, arg1)
						local function __FUNC_127F3_(arg0, arg1)
							local function __FUNC_12948_(arg0, arg1)
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
								__FUNC_12948_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12948_)
						end

						if arg1.interrupted then
							__FUNC_127F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127F3_)
					end

					if arg1.interrupted then
						__FUNC_12678_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12678_)
				end

				if arg1.interrupted then
					__FUNC_12523_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12523_)
			end

			if arg1.interrupted then
				__FUNC_123A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123A8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_12251_(registerVal12, {})
		local function __FUNC_12AFD_(arg0, arg1)
			local function __FUNC_12C54_(arg0, arg1)
				local function __FUNC_12DCF_(arg0, arg1)
					local function __FUNC_12F47_(arg0, arg1)
						local function __FUNC_130BF_(arg0, arg1)
							local function __FUNC_13214_(arg0, arg1)
								local function __FUNC_1338F_(arg0, arg1)
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
									__FUNC_1338F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1338F_)
							end

							if arg1.interrupted then
								__FUNC_13214_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13214_)
						end

						if arg1.interrupted then
							__FUNC_130BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130BF_)
					end

					if arg1.interrupted then
						__FUNC_12F47_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F47_)
				end

				if arg1.interrupted then
					__FUNC_12DCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DCF_)
			end

			if arg1.interrupted then
				__FUNC_12C54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C54_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_12AFD_(registerVal13, {})
		local function __FUNC_13541_(arg0, arg1)
			local function __FUNC_13698_(arg0, arg1)
				local function __FUNC_13813_(arg0, arg1)
					local function __FUNC_13968_(arg0, arg1)
						local function __FUNC_13AE3_(arg0, arg1)
							local function __FUNC_13C38_(arg0, arg1)
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
								__FUNC_13C38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C38_)
						end

						if arg1.interrupted then
							__FUNC_13AE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AE3_)
					end

					if arg1.interrupted then
						__FUNC_13968_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13968_)
				end

				if arg1.interrupted then
					__FUNC_13813_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13813_)
			end

			if arg1.interrupted then
				__FUNC_13698_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13698_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_13541_(registerVal14, {})
		local function __FUNC_13DED_(arg0, arg1)
			local function __FUNC_13F44_(arg0, arg1)
				local function __FUNC_140BF_(arg0, arg1)
					local function __FUNC_14214_(arg0, arg1)
						local function __FUNC_1438F_(arg0, arg1)
							local function __FUNC_144E4_(arg0, arg1)
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
								__FUNC_144E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144E4_)
						end

						if arg1.interrupted then
							__FUNC_1438F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1438F_)
					end

					if arg1.interrupted then
						__FUNC_14214_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14214_)
				end

				if arg1.interrupted then
					__FUNC_140BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140BF_)
			end

			if arg1.interrupted then
				__FUNC_13F44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F44_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_13DED_(registerVal15, {})
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

	registerVal19.GainFocus = __FUNC_1127E_
	local function __FUNC_14699_()
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

	registerVal19.Focus = __FUNC_14699_
	local function __FUNC_14B24_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1509A_(arg0, arg1)
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
		__FUNC_1509A_(registerVal4, {})
		local function __FUNC_1524D_(arg0, arg1)
			local function __FUNC_153C7_(arg0, arg1)
				local function __FUNC_1553F_(arg0, arg1)
					local function __FUNC_156B7_(arg0, arg1)
						local function __FUNC_1580C_(arg0, arg1)
							local function __FUNC_15987_(arg0, arg1)
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
								__FUNC_15987_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15987_)
						end

						if arg1.interrupted then
							__FUNC_1580C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1580C_)
					end

					if arg1.interrupted then
						__FUNC_156B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156B7_)
				end

				if arg1.interrupted then
					__FUNC_1553F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1553F_)
			end

			if arg1.interrupted then
				__FUNC_153C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_153C7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1524D_(registerVal11, {})
		local function __FUNC_15B39_(arg0, arg1)
			local function __FUNC_15CB3_(arg0, arg1)
				local function __FUNC_15E2B_(arg0, arg1)
					local function __FUNC_15FA3_(arg0, arg1)
						local function __FUNC_160F8_(arg0, arg1)
							local function __FUNC_16273_(arg0, arg1)
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
								__FUNC_16273_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16273_)
						end

						if arg1.interrupted then
							__FUNC_160F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160F8_)
					end

					if arg1.interrupted then
						__FUNC_15FA3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FA3_)
				end

				if arg1.interrupted then
					__FUNC_15E2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E2B_)
			end

			if arg1.interrupted then
				__FUNC_15CB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CB3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_15B39_(registerVal12, {})
		local function __FUNC_16425_(arg0, arg1)
			local function __FUNC_1657C_(arg0, arg1)
				local function __FUNC_166F7_(arg0, arg1)
					local function __FUNC_1686F_(arg0, arg1)
						local function __FUNC_169E7_(arg0, arg1)
							local function __FUNC_16B3C_(arg0, arg1)
								local function __FUNC_16CB7_(arg0, arg1)
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
									__FUNC_16CB7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16CB7_)
							end

							if arg1.interrupted then
								__FUNC_16B3C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16B3C_)
						end

						if arg1.interrupted then
							__FUNC_169E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_169E7_)
					end

					if arg1.interrupted then
						__FUNC_1686F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1686F_)
				end

				if arg1.interrupted then
					__FUNC_166F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166F7_)
			end

			if arg1.interrupted then
				__FUNC_1657C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1657C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_16425_(registerVal13, {})
		local function __FUNC_16E69_(arg0, arg1)
			local function __FUNC_16FC0_(arg0, arg1)
				local function __FUNC_1713B_(arg0, arg1)
					local function __FUNC_17290_(arg0, arg1)
						local function __FUNC_1740B_(arg0, arg1)
							local function __FUNC_17560_(arg0, arg1)
								local function __FUNC_176DB_(arg0, arg1)
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
									__FUNC_176DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176DB_)
							end

							if arg1.interrupted then
								__FUNC_17560_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17560_)
						end

						if arg1.interrupted then
							__FUNC_1740B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1740B_)
					end

					if arg1.interrupted then
						__FUNC_17290_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17290_)
				end

				if arg1.interrupted then
					__FUNC_1713B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1713B_)
			end

			if arg1.interrupted then
				__FUNC_16FC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16FC0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_16E69_(registerVal14, {})
		local function __FUNC_1788D_(arg0, arg1)
			local function __FUNC_179E4_(arg0, arg1)
				local function __FUNC_17B5F_(arg0, arg1)
					local function __FUNC_17CB4_(arg0, arg1)
						local function __FUNC_17E2F_(arg0, arg1)
							local function __FUNC_17F84_(arg0, arg1)
								local function __FUNC_180FF_(arg0, arg1)
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
									__FUNC_180FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_180FF_)
							end

							if arg1.interrupted then
								__FUNC_17F84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F84_)
						end

						if arg1.interrupted then
							__FUNC_17E2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E2F_)
					end

					if arg1.interrupted then
						__FUNC_17CB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17CB4_)
				end

				if arg1.interrupted then
					__FUNC_17B5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B5F_)
			end

			if arg1.interrupted then
				__FUNC_179E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179E4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1788D_(registerVal15, {})
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

	registerVal19.LoseFocus = __FUNC_14B24_
	registerVal18.Sale = registerVal19
	registerVal2.clipsPerState = registerVal18
	registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Purchased"
	local function __FUNC_182B1_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "purchasestatus", Enum.StoreProductPurchaseStatus.STORE_PRODUCT_PURCHASED)
	end

	registerVal21.condition = __FUNC_182B1_
	local registerVal22 = {}
	registerVal22.stateName = "Sale"
	local function __FUNC_183A0_(arg0, arg2, arg3)
		return IsCodPointsSaleActivated(arg2, arg1)
	end

	registerVal22.condition = __FUNC_183A0_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_18402_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "purchasestatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "purchasestatus", true, __FUNC_18402_)
	local function __FUNC_18524_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "metadata"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "metadata", true, __FUNC_18524_)
	registerVal7.id = "frameWidget"
	local function __FUNC_18642_(arg0, arg1)
		local registerVal2 = arg0.frameWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_18642_)
	local function __FUNC_18747_(arg0)
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

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18747_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

