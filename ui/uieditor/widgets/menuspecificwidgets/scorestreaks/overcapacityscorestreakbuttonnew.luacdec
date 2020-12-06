-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.overCapacityScorestreakInfo")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreaksArrow")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.overCapacityScorestreakButtonNew = registerVal1
function CoD.overCapacityScorestreakButtonNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.overCapacityScorestreakButtonNew)
	registerVal2.id = "overCapacityScorestreakButtonNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
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
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.700000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.480000, 0.480000, 0.480000)
	registerVal6:setAlpha(0.150000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal7:setRGB(1.000000, 0.410000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal7)
	registerVal2.alertIcon = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal10:setRGB(1.000000, 0.300000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBorder = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal11:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal11:setRGB(1.000000, 0.090000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal12:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal12:setRGB(1.000000, 0.150000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch2 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_15C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(AppendString("_menu", GetItemImageFromIndex(registerVal1))))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_15C7_)
	registerVal2:addElement(registerVal13)
	registerVal2.image = registerVal13
	local registerVal14 = CoD.overCapacityScorestreakInfo.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -96.000000, 236.000000)
	registerVal14:setTopBottom(false, true, 20.000000, 109.000000)
	local function __FUNC_16D0_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_16D0_)
	registerVal2:addElement(registerVal14)
	registerVal2.info = registerVal14
	local registerVal15 = CoD.scorestreaksArrow.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 56.000000, 65.000000)
	registerVal15:setTopBottom(true, false, 130.000000, 140.000000)
	registerVal15:setAlpha(0.800000)
	local function __FUNC_1722_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_1722_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "NoHintText"
	local function __FUNC_1772_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_1772_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_17F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, nil, true, __FUNC_17F2_)
	registerVal2:addElement(registerVal15)
	registerVal2.scorestreaksArrow = registerVal15
	local registerVal16 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal16:setTopBottom(true, false, 7.000000, 110.640000)
	local function __FUNC_18FD_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_18FD_)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Visible"
	local function __FUNC_194E_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal20.condition = __FUNC_194E_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "lobbyRoot.Pregame.Update")
	local function __FUNC_19A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_19A6_)
	registerVal2:addElement(registerVal16)
	registerVal2.RestrictedItemWarning = registerVal16
	local registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_1AD2_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImage:setRGB(0.480000, 0.480000, 0.480000)
		registerVal2.itemImage:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.info:setLeftRight(false, false, -96.000000, 236.000000)
		registerVal2.info:setTopBottom(false, true, 20.000000, 109.000000)
		registerVal2.info:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.scorestreaksArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_1AD2_
	local function __FUNC_2082_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_2499_(arg0, arg1)
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
		__FUNC_2499_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_264D_(arg0, arg1)
			local function __FUNC_27A4_(arg0, arg1)
				local function __FUNC_291F_(arg0, arg1)
					local function __FUNC_2A74_(arg0, arg1)
						local function __FUNC_2BEF_(arg0, arg1)
							local function __FUNC_2D44_(arg0, arg1)
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
								__FUNC_2D44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D44_)
						end

						if arg1.interrupted then
							__FUNC_2BEF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BEF_)
					end

					if arg1.interrupted then
						__FUNC_2A74_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A74_)
				end

				if arg1.interrupted then
					__FUNC_291F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291F_)
			end

			if arg1.interrupted then
				__FUNC_27A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A4_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_264D_(registerVal8, {})
		local function __FUNC_2EF9_(arg0, arg1)
			local function __FUNC_3050_(arg0, arg1)
				local function __FUNC_31CB_(arg0, arg1)
					local function __FUNC_3320_(arg0, arg1)
						local function __FUNC_349B_(arg0, arg1)
							local function __FUNC_35F0_(arg0, arg1)
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
								__FUNC_35F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35F0_)
						end

						if arg1.interrupted then
							__FUNC_349B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349B_)
					end

					if arg1.interrupted then
						__FUNC_3320_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3320_)
				end

				if arg1.interrupted then
					__FUNC_31CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31CB_)
			end

			if arg1.interrupted then
				__FUNC_3050_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3050_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2EF9_(registerVal9, {})
		local function __FUNC_37A5_(arg0, arg1)
			local function __FUNC_38FC_(arg0, arg1)
				local function __FUNC_3A77_(arg0, arg1)
					local function __FUNC_3BEF_(arg0, arg1)
						local function __FUNC_3D67_(arg0, arg1)
							local function __FUNC_3EBC_(arg0, arg1)
								local function __FUNC_4037_(arg0, arg1)
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
									__FUNC_4037_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4037_)
							end

							if arg1.interrupted then
								__FUNC_3EBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EBC_)
						end

						if arg1.interrupted then
							__FUNC_3D67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D67_)
					end

					if arg1.interrupted then
						__FUNC_3BEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BEF_)
				end

				if arg1.interrupted then
					__FUNC_3A77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A77_)
			end

			if arg1.interrupted then
				__FUNC_38FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_37A5_(registerVal10, {})
		local function __FUNC_41E9_(arg0, arg1)
			local function __FUNC_4340_(arg0, arg1)
				local function __FUNC_44BB_(arg0, arg1)
					local function __FUNC_4610_(arg0, arg1)
						local function __FUNC_478B_(arg0, arg1)
							local function __FUNC_48E0_(arg0, arg1)
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
								__FUNC_48E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48E0_)
						end

						if arg1.interrupted then
							__FUNC_478B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_478B_)
					end

					if arg1.interrupted then
						__FUNC_4610_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4610_)
				end

				if arg1.interrupted then
					__FUNC_44BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44BB_)
			end

			if arg1.interrupted then
				__FUNC_4340_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4340_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_41E9_(registerVal11, {})
		local function __FUNC_4A95_(arg0, arg1)
			local function __FUNC_4BEC_(arg0, arg1)
				local function __FUNC_4D67_(arg0, arg1)
					local function __FUNC_4EBC_(arg0, arg1)
						local function __FUNC_5037_(arg0, arg1)
							local function __FUNC_518C_(arg0, arg1)
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
								__FUNC_518C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_518C_)
						end

						if arg1.interrupted then
							__FUNC_5037_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5037_)
					end

					if arg1.interrupted then
						__FUNC_4EBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EBC_)
				end

				if arg1.interrupted then
					__FUNC_4D67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D67_)
			end

			if arg1.interrupted then
				__FUNC_4BEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BEC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4A95_(registerVal12, {})
		local function __FUNC_5341_(arg0, arg1)
			local function __FUNC_54FA_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setXRot(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_54FA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setXRot(0.000000)
			arg0:setZoom(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54FA_)
		end

		registerVal14:completeAnimation()
		registerVal2.info:setAlpha(0.000000)
		registerVal2.info:setXRot(90.000000)
		registerVal2.info:setZoom(-40.000000)
		__FUNC_5341_(registerVal14, {})
		local function __FUNC_56EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.scorestreaksArrow:setAlpha(0.000000)
		__FUNC_56EC_(registerVal15, {})
	end

	registerVal18.GainFocus = __FUNC_2082_
	local function __FUNC_58A1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.info:setAlpha(1.000000)
		registerVal2.info:setZoom(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.scorestreaksArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_58A1_
	local function __FUNC_5BA5_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_6048_(arg0, arg1)
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
		__FUNC_6048_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_61FD_(arg0, arg1)
			local function __FUNC_6377_(arg0, arg1)
				local function __FUNC_64EF_(arg0, arg1)
					local function __FUNC_6667_(arg0, arg1)
						local function __FUNC_67BC_(arg0, arg1)
							local function __FUNC_6937_(arg0, arg1)
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
								__FUNC_6937_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6937_)
						end

						if arg1.interrupted then
							__FUNC_67BC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67BC_)
					end

					if arg1.interrupted then
						__FUNC_6667_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6667_)
				end

				if arg1.interrupted then
					__FUNC_64EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64EF_)
			end

			if arg1.interrupted then
				__FUNC_6377_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6377_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_61FD_(registerVal8, {})
		local function __FUNC_6AE9_(arg0, arg1)
			local function __FUNC_6C63_(arg0, arg1)
				local function __FUNC_6DDB_(arg0, arg1)
					local function __FUNC_6F53_(arg0, arg1)
						local function __FUNC_70A8_(arg0, arg1)
							local function __FUNC_7223_(arg0, arg1)
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
								__FUNC_7223_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7223_)
						end

						if arg1.interrupted then
							__FUNC_70A8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70A8_)
					end

					if arg1.interrupted then
						__FUNC_6F53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F53_)
				end

				if arg1.interrupted then
					__FUNC_6DDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DDB_)
			end

			if arg1.interrupted then
				__FUNC_6C63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C63_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6AE9_(registerVal9, {})
		local function __FUNC_73D5_(arg0, arg1)
			local function __FUNC_752C_(arg0, arg1)
				local function __FUNC_76A7_(arg0, arg1)
					local function __FUNC_781F_(arg0, arg1)
						local function __FUNC_7997_(arg0, arg1)
							local function __FUNC_7AEC_(arg0, arg1)
								local function __FUNC_7C67_(arg0, arg1)
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
									__FUNC_7C67_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C67_)
							end

							if arg1.interrupted then
								__FUNC_7AEC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AEC_)
						end

						if arg1.interrupted then
							__FUNC_7997_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7997_)
					end

					if arg1.interrupted then
						__FUNC_781F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_781F_)
				end

				if arg1.interrupted then
					__FUNC_76A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76A7_)
			end

			if arg1.interrupted then
				__FUNC_752C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_752C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_73D5_(registerVal10, {})
		local function __FUNC_7E19_(arg0, arg1)
			local function __FUNC_7F70_(arg0, arg1)
				local function __FUNC_80EB_(arg0, arg1)
					local function __FUNC_8240_(arg0, arg1)
						local function __FUNC_83BB_(arg0, arg1)
							local function __FUNC_8510_(arg0, arg1)
								local function __FUNC_868B_(arg0, arg1)
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
									__FUNC_868B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868B_)
							end

							if arg1.interrupted then
								__FUNC_8510_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8510_)
						end

						if arg1.interrupted then
							__FUNC_83BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83BB_)
					end

					if arg1.interrupted then
						__FUNC_8240_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8240_)
				end

				if arg1.interrupted then
					__FUNC_80EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80EB_)
			end

			if arg1.interrupted then
				__FUNC_7F70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F70_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7E19_(registerVal11, {})
		local function __FUNC_883D_(arg0, arg1)
			local function __FUNC_8994_(arg0, arg1)
				local function __FUNC_8B0F_(arg0, arg1)
					local function __FUNC_8C64_(arg0, arg1)
						local function __FUNC_8DDF_(arg0, arg1)
							local function __FUNC_8F34_(arg0, arg1)
								local function __FUNC_90AF_(arg0, arg1)
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
									__FUNC_90AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90AF_)
							end

							if arg1.interrupted then
								__FUNC_8F34_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F34_)
						end

						if arg1.interrupted then
							__FUNC_8DDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DDF_)
					end

					if arg1.interrupted then
						__FUNC_8C64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C64_)
				end

				if arg1.interrupted then
					__FUNC_8B0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B0F_)
			end

			if arg1.interrupted then
				__FUNC_8994_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8994_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_883D_(registerVal12, {})
		local function __FUNC_9261_(arg0, arg1)
			local function __FUNC_941F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -96.000000, 236.000000)
				arg0:setTopBottom(false, true, 20.000000, 109.000000)
				arg0:setAlpha(0.000000)
				arg0:setXRot(85.000000)
				arg0:setZoom(-80.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_941F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:setXRot(68.000000)
			arg0:setZoom(-80.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_941F_)
		end

		registerVal14:completeAnimation()
		registerVal2.info:setLeftRight(false, false, -96.000000, 236.000000)
		registerVal2.info:setTopBottom(false, true, 20.000000, 109.000000)
		registerVal2.info:setAlpha(1.000000)
		registerVal2.info:setXRot(0.000000)
		registerVal2.info:setZoom(0.000000)
		__FUNC_9261_(registerVal14, {})
		local function __FUNC_9680_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.scorestreaksArrow:setAlpha(0.800000)
		__FUNC_9680_(registerVal15, {})
	end

	registerVal18.LoseFocus = __FUNC_5BA5_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_9835_()
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
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_9835_
	local function __FUNC_9C6C_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9EA1_(arg0, arg1)
			local function __FUNC_9FF8_(arg0, arg1)
				local function __FUNC_A173_(arg0, arg1)
					local function __FUNC_A2C8_(arg0, arg1)
						local function __FUNC_A443_(arg0, arg1)
							local function __FUNC_A598_(arg0, arg1)
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
								__FUNC_A598_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A598_)
						end

						if arg1.interrupted then
							__FUNC_A443_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A443_)
					end

					if arg1.interrupted then
						__FUNC_A2C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2C8_)
				end

				if arg1.interrupted then
					__FUNC_A173_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A173_)
			end

			if arg1.interrupted then
				__FUNC_9FF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FF8_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_9EA1_(registerVal8, {})
		local function __FUNC_A74D_(arg0, arg1)
			local function __FUNC_A8A4_(arg0, arg1)
				local function __FUNC_AA1F_(arg0, arg1)
					local function __FUNC_AB74_(arg0, arg1)
						local function __FUNC_ACEF_(arg0, arg1)
							local function __FUNC_AE44_(arg0, arg1)
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
								__FUNC_AE44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE44_)
						end

						if arg1.interrupted then
							__FUNC_ACEF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACEF_)
					end

					if arg1.interrupted then
						__FUNC_AB74_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB74_)
				end

				if arg1.interrupted then
					__FUNC_AA1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA1F_)
			end

			if arg1.interrupted then
				__FUNC_A8A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8A4_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A74D_(registerVal9, {})
		local function __FUNC_AFF9_(arg0, arg1)
			local function __FUNC_B150_(arg0, arg1)
				local function __FUNC_B2CB_(arg0, arg1)
					local function __FUNC_B443_(arg0, arg1)
						local function __FUNC_B5BB_(arg0, arg1)
							local function __FUNC_B710_(arg0, arg1)
								local function __FUNC_B88B_(arg0, arg1)
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
									__FUNC_B88B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B88B_)
							end

							if arg1.interrupted then
								__FUNC_B710_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B710_)
						end

						if arg1.interrupted then
							__FUNC_B5BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5BB_)
					end

					if arg1.interrupted then
						__FUNC_B443_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B443_)
				end

				if arg1.interrupted then
					__FUNC_B2CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2CB_)
			end

			if arg1.interrupted then
				__FUNC_B150_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B150_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_AFF9_(registerVal10, {})
		local function __FUNC_BA3D_(arg0, arg1)
			local function __FUNC_BB94_(arg0, arg1)
				local function __FUNC_BD0F_(arg0, arg1)
					local function __FUNC_BE64_(arg0, arg1)
						local function __FUNC_BFDF_(arg0, arg1)
							local function __FUNC_C134_(arg0, arg1)
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
								__FUNC_C134_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C134_)
						end

						if arg1.interrupted then
							__FUNC_BFDF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFDF_)
					end

					if arg1.interrupted then
						__FUNC_BE64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE64_)
				end

				if arg1.interrupted then
					__FUNC_BD0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD0F_)
			end

			if arg1.interrupted then
				__FUNC_BB94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB94_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_BA3D_(registerVal11, {})
		local function __FUNC_C2E9_(arg0, arg1)
			local function __FUNC_C440_(arg0, arg1)
				local function __FUNC_C5BB_(arg0, arg1)
					local function __FUNC_C710_(arg0, arg1)
						local function __FUNC_C88B_(arg0, arg1)
							local function __FUNC_C9E0_(arg0, arg1)
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
								__FUNC_C9E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9E0_)
						end

						if arg1.interrupted then
							__FUNC_C88B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C88B_)
					end

					if arg1.interrupted then
						__FUNC_C710_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C710_)
				end

				if arg1.interrupted then
					__FUNC_C5BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5BB_)
			end

			if arg1.interrupted then
				__FUNC_C440_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C440_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C2E9_(registerVal12, {})
	end

	registerVal18.GainFocus = __FUNC_9C6C_
	local function __FUNC_CB95_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal18.Focus = __FUNC_CB95_
	local function __FUNC_CCEC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_CF21_(arg0, arg1)
			local function __FUNC_D09B_(arg0, arg1)
				local function __FUNC_D213_(arg0, arg1)
					local function __FUNC_D38B_(arg0, arg1)
						local function __FUNC_D4E0_(arg0, arg1)
							local function __FUNC_D65B_(arg0, arg1)
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
								__FUNC_D65B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D65B_)
						end

						if arg1.interrupted then
							__FUNC_D4E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4E0_)
					end

					if arg1.interrupted then
						__FUNC_D38B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D38B_)
				end

				if arg1.interrupted then
					__FUNC_D213_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D213_)
			end

			if arg1.interrupted then
				__FUNC_D09B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D09B_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_CF21_(registerVal8, {})
		local function __FUNC_D80D_(arg0, arg1)
			local function __FUNC_D987_(arg0, arg1)
				local function __FUNC_DAFF_(arg0, arg1)
					local function __FUNC_DC77_(arg0, arg1)
						local function __FUNC_DDCC_(arg0, arg1)
							local function __FUNC_DF47_(arg0, arg1)
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
								__FUNC_DF47_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF47_)
						end

						if arg1.interrupted then
							__FUNC_DDCC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDCC_)
					end

					if arg1.interrupted then
						__FUNC_DC77_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC77_)
				end

				if arg1.interrupted then
					__FUNC_DAFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAFF_)
			end

			if arg1.interrupted then
				__FUNC_D987_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D987_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_D80D_(registerVal9, {})
		local function __FUNC_E0F9_(arg0, arg1)
			local function __FUNC_E250_(arg0, arg1)
				local function __FUNC_E3CB_(arg0, arg1)
					local function __FUNC_E543_(arg0, arg1)
						local function __FUNC_E6BB_(arg0, arg1)
							local function __FUNC_E810_(arg0, arg1)
								local function __FUNC_E98B_(arg0, arg1)
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
									__FUNC_E98B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E98B_)
							end

							if arg1.interrupted then
								__FUNC_E810_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E810_)
						end

						if arg1.interrupted then
							__FUNC_E6BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6BB_)
					end

					if arg1.interrupted then
						__FUNC_E543_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E543_)
				end

				if arg1.interrupted then
					__FUNC_E3CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3CB_)
			end

			if arg1.interrupted then
				__FUNC_E250_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E250_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_E0F9_(registerVal10, {})
		local function __FUNC_EB3D_(arg0, arg1)
			local function __FUNC_EC94_(arg0, arg1)
				local function __FUNC_EE0F_(arg0, arg1)
					local function __FUNC_EF64_(arg0, arg1)
						local function __FUNC_F0DF_(arg0, arg1)
							local function __FUNC_F234_(arg0, arg1)
								local function __FUNC_F3AF_(arg0, arg1)
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
									__FUNC_F3AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3AF_)
							end

							if arg1.interrupted then
								__FUNC_F234_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F234_)
						end

						if arg1.interrupted then
							__FUNC_F0DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0DF_)
					end

					if arg1.interrupted then
						__FUNC_EF64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF64_)
				end

				if arg1.interrupted then
					__FUNC_EE0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE0F_)
			end

			if arg1.interrupted then
				__FUNC_EC94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC94_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_EB3D_(registerVal11, {})
		local function __FUNC_F561_(arg0, arg1)
			local function __FUNC_F6B8_(arg0, arg1)
				local function __FUNC_F833_(arg0, arg1)
					local function __FUNC_F988_(arg0, arg1)
						local function __FUNC_FB03_(arg0, arg1)
							local function __FUNC_FC58_(arg0, arg1)
								local function __FUNC_FDD3_(arg0, arg1)
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
									__FUNC_FDD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDD3_)
							end

							if arg1.interrupted then
								__FUNC_FC58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC58_)
						end

						if arg1.interrupted then
							__FUNC_FB03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB03_)
					end

					if arg1.interrupted then
						__FUNC_F988_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F988_)
				end

				if arg1.interrupted then
					__FUNC_F833_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F833_)
			end

			if arg1.interrupted then
				__FUNC_F6B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_F561_(registerVal12, {})
	end

	registerVal18.LoseFocus = __FUNC_CCEC_
	registerVal17.New = registerVal18
	registerVal2.clipsPerState = registerVal17
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "New"
	local function __FUNC_FF85_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_FF85_
	registerVal19 = {registerVal20}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_FFD1_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.info:close()
		arg0.scorestreaksArrow:close()
		arg0.RestrictedItemWarning:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FFD1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

