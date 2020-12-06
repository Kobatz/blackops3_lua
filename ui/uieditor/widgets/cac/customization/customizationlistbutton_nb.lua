-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.Customization.CustomizationListButtonImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CustomizationListButton_NB = registerVal1
function CoD.CustomizationListButton_NB.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomizationListButton_NB)
	registerVal2.id = "CustomizationListButton_NB"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 225.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
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
	registerVal6:setLeftRight(true, false, 63.000000, 67.000000)
	registerVal6:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal6:setAlpha(0.300000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageLine = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal7:setRGB(0.560000, 0.680000, 0.270000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal7)
	registerVal2.equippedIcon = registerVal7
	local registerVal8 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 73.000000, 218.000000)
	registerVal8:setTopBottom(false, false, -9.500000, 10.500000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "HasNew"
	local function __FUNC_13BC_(arg0, arg2, arg3)
		return IsCACAnyCamoNew(registerVal2, arg1)
	end

	registerVal12.condition = __FUNC_13BC_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.LabelButton = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal10:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	registerVal11 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal11:setRGB(1.000000, 0.300000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBorder = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal12:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal13:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = CoD.CustomizationListButtonImage.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal14:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_1415_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_1415_)
	local function __FUNC_1466_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.paintjobExtraCamRender:setupWCPaintjobIconExtraCamRender(GetPaintshopExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "paintjobSlotAndIndex", true, __FUNC_1466_)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "PaintJob"
	local function __FUNC_1572_(arg0, arg2, arg3)
		return IsPaintJobCustomListButton(arg2, arg1)
	end

	registerVal18.condition = __FUNC_1572_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_15D4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobSlot"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "paintjobSlot", true, __FUNC_15D4_)
	local function __FUNC_16F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobIndex"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "paintjobIndex", true, __FUNC_16F6_)
	registerVal2:addElement(registerVal14)
	registerVal2.itemImage = registerVal14
	local function __FUNC_1817_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "displayText", true, __FUNC_1817_)
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_18EC_()
		registerVal2:setupElementClipCounter(10.000000)
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
		registerVal2.itemImageLine:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_18EC_
	local function __FUNC_1D2B_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1FBB_(arg0, arg1)
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
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_1FBB_(registerVal4, {})
		local function __FUNC_216D_(arg0, arg1)
			local function __FUNC_22C4_(arg0, arg1)
				local function __FUNC_243F_(arg0, arg1)
					local function __FUNC_2594_(arg0, arg1)
						local function __FUNC_270F_(arg0, arg1)
							local function __FUNC_2864_(arg0, arg1)
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
								__FUNC_2864_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2864_)
						end

						if arg1.interrupted then
							__FUNC_270F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_270F_)
					end

					if arg1.interrupted then
						__FUNC_2594_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2594_)
				end

				if arg1.interrupted then
					__FUNC_243F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_243F_)
			end

			if arg1.interrupted then
				__FUNC_22C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C4_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_216D_(registerVal9, {})
		local function __FUNC_2A19_(arg0, arg1)
			local function __FUNC_2B70_(arg0, arg1)
				local function __FUNC_2CEB_(arg0, arg1)
					local function __FUNC_2E40_(arg0, arg1)
						local function __FUNC_2FBB_(arg0, arg1)
							local function __FUNC_3110_(arg0, arg1)
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
								__FUNC_3110_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3110_)
						end

						if arg1.interrupted then
							__FUNC_2FBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FBB_)
					end

					if arg1.interrupted then
						__FUNC_2E40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E40_)
				end

				if arg1.interrupted then
					__FUNC_2CEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CEB_)
			end

			if arg1.interrupted then
				__FUNC_2B70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B70_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2A19_(registerVal10, {})
		local function __FUNC_32C5_(arg0, arg1)
			local function __FUNC_341C_(arg0, arg1)
				local function __FUNC_3597_(arg0, arg1)
					local function __FUNC_370F_(arg0, arg1)
						local function __FUNC_3887_(arg0, arg1)
							local function __FUNC_39DC_(arg0, arg1)
								local function __FUNC_3B57_(arg0, arg1)
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
									__FUNC_3B57_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B57_)
							end

							if arg1.interrupted then
								__FUNC_39DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39DC_)
						end

						if arg1.interrupted then
							__FUNC_3887_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3887_)
					end

					if arg1.interrupted then
						__FUNC_370F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_370F_)
				end

				if arg1.interrupted then
					__FUNC_3597_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3597_)
			end

			if arg1.interrupted then
				__FUNC_341C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_341C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_32C5_(registerVal11, {})
		local function __FUNC_3D09_(arg0, arg1)
			local function __FUNC_3E60_(arg0, arg1)
				local function __FUNC_3FDB_(arg0, arg1)
					local function __FUNC_4130_(arg0, arg1)
						local function __FUNC_42AB_(arg0, arg1)
							local function __FUNC_4400_(arg0, arg1)
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
								__FUNC_4400_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4400_)
						end

						if arg1.interrupted then
							__FUNC_42AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42AB_)
					end

					if arg1.interrupted then
						__FUNC_4130_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4130_)
				end

				if arg1.interrupted then
					__FUNC_3FDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FDB_)
			end

			if arg1.interrupted then
				__FUNC_3E60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E60_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3D09_(registerVal12, {})
		local function __FUNC_45B5_(arg0, arg1)
			local function __FUNC_470C_(arg0, arg1)
				local function __FUNC_4887_(arg0, arg1)
					local function __FUNC_49DC_(arg0, arg1)
						local function __FUNC_4B57_(arg0, arg1)
							local function __FUNC_4CAC_(arg0, arg1)
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
								__FUNC_4CAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CAC_)
						end

						if arg1.interrupted then
							__FUNC_4B57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B57_)
					end

					if arg1.interrupted then
						__FUNC_49DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49DC_)
				end

				if arg1.interrupted then
					__FUNC_4887_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4887_)
			end

			if arg1.interrupted then
				__FUNC_470C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_470C_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_45B5_(registerVal13, {})
	end

	registerVal16.GainFocus = __FUNC_1D2B_
	local function __FUNC_4E61_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal16.Focus = __FUNC_4E61_
	local function __FUNC_501A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_52AB_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_52AB_(registerVal4, {})
		local function __FUNC_545D_(arg0, arg1)
			local function __FUNC_55D7_(arg0, arg1)
				local function __FUNC_574F_(arg0, arg1)
					local function __FUNC_58C7_(arg0, arg1)
						local function __FUNC_5A1C_(arg0, arg1)
							local function __FUNC_5B97_(arg0, arg1)
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
								__FUNC_5B97_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B97_)
						end

						if arg1.interrupted then
							__FUNC_5A1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A1C_)
					end

					if arg1.interrupted then
						__FUNC_58C7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58C7_)
				end

				if arg1.interrupted then
					__FUNC_574F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_574F_)
			end

			if arg1.interrupted then
				__FUNC_55D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55D7_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_545D_(registerVal9, {})
		local function __FUNC_5D49_(arg0, arg1)
			local function __FUNC_5EC3_(arg0, arg1)
				local function __FUNC_603B_(arg0, arg1)
					local function __FUNC_61B3_(arg0, arg1)
						local function __FUNC_6308_(arg0, arg1)
							local function __FUNC_6483_(arg0, arg1)
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
								__FUNC_6483_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6483_)
						end

						if arg1.interrupted then
							__FUNC_6308_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6308_)
					end

					if arg1.interrupted then
						__FUNC_61B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61B3_)
				end

				if arg1.interrupted then
					__FUNC_603B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_603B_)
			end

			if arg1.interrupted then
				__FUNC_5EC3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EC3_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5D49_(registerVal10, {})
		local function __FUNC_6635_(arg0, arg1)
			local function __FUNC_678C_(arg0, arg1)
				local function __FUNC_6907_(arg0, arg1)
					local function __FUNC_6A7F_(arg0, arg1)
						local function __FUNC_6BF7_(arg0, arg1)
							local function __FUNC_6D4C_(arg0, arg1)
								local function __FUNC_6EC7_(arg0, arg1)
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
									__FUNC_6EC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EC7_)
							end

							if arg1.interrupted then
								__FUNC_6D4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D4C_)
						end

						if arg1.interrupted then
							__FUNC_6BF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF7_)
					end

					if arg1.interrupted then
						__FUNC_6A7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A7F_)
				end

				if arg1.interrupted then
					__FUNC_6907_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6907_)
			end

			if arg1.interrupted then
				__FUNC_678C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_678C_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6635_(registerVal11, {})
		local function __FUNC_7079_(arg0, arg1)
			local function __FUNC_71D0_(arg0, arg1)
				local function __FUNC_734B_(arg0, arg1)
					local function __FUNC_74A0_(arg0, arg1)
						local function __FUNC_761B_(arg0, arg1)
							local function __FUNC_7770_(arg0, arg1)
								local function __FUNC_78EB_(arg0, arg1)
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
									__FUNC_78EB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78EB_)
							end

							if arg1.interrupted then
								__FUNC_7770_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7770_)
						end

						if arg1.interrupted then
							__FUNC_761B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_761B_)
					end

					if arg1.interrupted then
						__FUNC_74A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74A0_)
				end

				if arg1.interrupted then
					__FUNC_734B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_734B_)
			end

			if arg1.interrupted then
				__FUNC_71D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71D0_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7079_(registerVal12, {})
		local function __FUNC_7A9D_(arg0, arg1)
			local function __FUNC_7BF4_(arg0, arg1)
				local function __FUNC_7D6F_(arg0, arg1)
					local function __FUNC_7EC4_(arg0, arg1)
						local function __FUNC_803F_(arg0, arg1)
							local function __FUNC_8194_(arg0, arg1)
								local function __FUNC_830F_(arg0, arg1)
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
									__FUNC_830F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_830F_)
							end

							if arg1.interrupted then
								__FUNC_8194_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8194_)
						end

						if arg1.interrupted then
							__FUNC_803F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_803F_)
					end

					if arg1.interrupted then
						__FUNC_7EC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EC4_)
				end

				if arg1.interrupted then
					__FUNC_7D6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D6F_)
			end

			if arg1.interrupted then
				__FUNC_7BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BF4_)
		end

		registerVal13:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_7A9D_(registerVal13, {})
	end

	registerVal16.LoseFocus = __FUNC_501A_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_84C1_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_84C1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

