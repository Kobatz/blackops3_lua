-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsAttachmentItemButtonND = registerVal1
function CoD.WeaponBuildKitsAttachmentItemButtonND.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsAttachmentItemButtonND)
	registerVal2.id = "WeaponBuildKitsAttachmentItemButtonND"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
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
	local function __FUNC_1B09_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_1B09_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.800000)
	registerVal2:addElement(registerVal7)
	registerVal2.itemImage = registerVal7
	local registerVal8 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 3.000000, 103.000000)
	registerVal8:setTopBottom(false, false, 32.000000, 52.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.LabelButton = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal9:setRGB(0.560000, 0.680000, 0.270000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal9)
	registerVal2.equippedIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal10:setRGB(1.000000, 0.410000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_warning_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.alertIcon = registerVal10
	local registerVal11 = CoD.cac_lock.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal11:setTopBottom(false, false, -16.250000, 15.750000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.lockedIcon = registerVal11
	local registerVal12 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal12:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.IconNew = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarT = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarB = registerVal14
	local registerVal15 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal15:setRGB(1.000000, 0.300000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBorder = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal16:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal16:setRGB(1.000000, 0.090000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.glitch = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal17:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal17:setRGB(1.000000, 0.150000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.glitch2 = registerVal17
	local registerVal18 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal18:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal18:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setZoom(1.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.FocusWhiteT = registerVal18
	local registerVal19 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal19:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZoom(1.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.FocusWhiteB = registerVal19
	local function __FUNC_1BBC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.itemImage:linkToElementModel(registerVal2, "image", true, __FUNC_1BBC_)
	local function __FUNC_1C70_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.LabelButton:linkToElementModel(registerVal2, "name", true, __FUNC_1C70_)
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_1D48_()
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
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_1D48_
	local function __FUNC_23CC_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2747_(arg0, arg1)
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
		__FUNC_2747_(registerVal4, {})
		local function __FUNC_28F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_28F9_(registerVal7, {})
		local function __FUNC_2ACB_(arg0, arg1)
			local function __FUNC_2C20_(arg0, arg1)
				local function __FUNC_2D9B_(arg0, arg1)
					local function __FUNC_2EF0_(arg0, arg1)
						local function __FUNC_306B_(arg0, arg1)
							local function __FUNC_31C0_(arg0, arg1)
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
								__FUNC_31C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31C0_)
						end

						if arg1.interrupted then
							__FUNC_306B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_306B_)
					end

					if arg1.interrupted then
						__FUNC_2EF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF0_)
				end

				if arg1.interrupted then
					__FUNC_2D9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9B_)
			end

			if arg1.interrupted then
				__FUNC_2C20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C20_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2ACB_(registerVal13, {})
		local function __FUNC_3375_(arg0, arg1)
			local function __FUNC_34CC_(arg0, arg1)
				local function __FUNC_3647_(arg0, arg1)
					local function __FUNC_379C_(arg0, arg1)
						local function __FUNC_3917_(arg0, arg1)
							local function __FUNC_3A6C_(arg0, arg1)
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
								__FUNC_3A6C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A6C_)
						end

						if arg1.interrupted then
							__FUNC_3917_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3917_)
					end

					if arg1.interrupted then
						__FUNC_379C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_379C_)
				end

				if arg1.interrupted then
					__FUNC_3647_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3647_)
			end

			if arg1.interrupted then
				__FUNC_34CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34CC_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3375_(registerVal14, {})
		local function __FUNC_3C21_(arg0, arg1)
			local function __FUNC_3D78_(arg0, arg1)
				local function __FUNC_3EF3_(arg0, arg1)
					local function __FUNC_406B_(arg0, arg1)
						local function __FUNC_41E3_(arg0, arg1)
							local function __FUNC_4338_(arg0, arg1)
								local function __FUNC_44B3_(arg0, arg1)
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
									__FUNC_44B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44B3_)
							end

							if arg1.interrupted then
								__FUNC_4338_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4338_)
						end

						if arg1.interrupted then
							__FUNC_41E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41E3_)
					end

					if arg1.interrupted then
						__FUNC_406B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_406B_)
				end

				if arg1.interrupted then
					__FUNC_3EF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EF3_)
			end

			if arg1.interrupted then
				__FUNC_3D78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D78_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3C21_(registerVal15, {})
		local function __FUNC_4665_(arg0, arg1)
			local function __FUNC_47BC_(arg0, arg1)
				local function __FUNC_4937_(arg0, arg1)
					local function __FUNC_4A8C_(arg0, arg1)
						local function __FUNC_4C07_(arg0, arg1)
							local function __FUNC_4D5C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4D5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D5C_)
						end

						if arg1.interrupted then
							__FUNC_4C07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C07_)
					end

					if arg1.interrupted then
						__FUNC_4A8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A8C_)
				end

				if arg1.interrupted then
					__FUNC_4937_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4937_)
			end

			if arg1.interrupted then
				__FUNC_47BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47BC_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4665_(registerVal16, {})
		local function __FUNC_4F3F_(arg0, arg1)
			local function __FUNC_5094_(arg0, arg1)
				local function __FUNC_520F_(arg0, arg1)
					local function __FUNC_5364_(arg0, arg1)
						local function __FUNC_54DF_(arg0, arg1)
							local function __FUNC_5634_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5634_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5634_)
						end

						if arg1.interrupted then
							__FUNC_54DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54DF_)
					end

					if arg1.interrupted then
						__FUNC_5364_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5364_)
				end

				if arg1.interrupted then
					__FUNC_520F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_520F_)
			end

			if arg1.interrupted then
				__FUNC_5094_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5094_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4F3F_(registerVal17, {})
	end

	registerVal21.GainFocus = __FUNC_23CC_
	local function __FUNC_5817_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_5817_
	local function __FUNC_5C19_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_5F60_(arg0, arg1)
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
		__FUNC_5F60_(registerVal4, {})
		local function __FUNC_6115_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_6115_(registerVal7, {})
		local function __FUNC_62C9_(arg0, arg1)
			local function __FUNC_6443_(arg0, arg1)
				local function __FUNC_65BB_(arg0, arg1)
					local function __FUNC_6733_(arg0, arg1)
						local function __FUNC_6888_(arg0, arg1)
							local function __FUNC_6A03_(arg0, arg1)
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
								__FUNC_6A03_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A03_)
						end

						if arg1.interrupted then
							__FUNC_6888_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6888_)
					end

					if arg1.interrupted then
						__FUNC_6733_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6733_)
				end

				if arg1.interrupted then
					__FUNC_65BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65BB_)
			end

			if arg1.interrupted then
				__FUNC_6443_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6443_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_62C9_(registerVal13, {})
		local function __FUNC_6BB5_(arg0, arg1)
			local function __FUNC_6D2F_(arg0, arg1)
				local function __FUNC_6EA7_(arg0, arg1)
					local function __FUNC_701F_(arg0, arg1)
						local function __FUNC_7174_(arg0, arg1)
							local function __FUNC_72EF_(arg0, arg1)
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
								__FUNC_72EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72EF_)
						end

						if arg1.interrupted then
							__FUNC_7174_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7174_)
					end

					if arg1.interrupted then
						__FUNC_701F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_701F_)
				end

				if arg1.interrupted then
					__FUNC_6EA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EA7_)
			end

			if arg1.interrupted then
				__FUNC_6D2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D2F_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6BB5_(registerVal14, {})
		local function __FUNC_74A1_(arg0, arg1)
			local function __FUNC_75F8_(arg0, arg1)
				local function __FUNC_7773_(arg0, arg1)
					local function __FUNC_78EB_(arg0, arg1)
						local function __FUNC_7A63_(arg0, arg1)
							local function __FUNC_7BB8_(arg0, arg1)
								local function __FUNC_7D33_(arg0, arg1)
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
									__FUNC_7D33_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D33_)
							end

							if arg1.interrupted then
								__FUNC_7BB8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BB8_)
						end

						if arg1.interrupted then
							__FUNC_7A63_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A63_)
					end

					if arg1.interrupted then
						__FUNC_78EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78EB_)
				end

				if arg1.interrupted then
					__FUNC_7773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7773_)
			end

			if arg1.interrupted then
				__FUNC_75F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75F8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_74A1_(registerVal15, {})
		local function __FUNC_7EE5_(arg0, arg1)
			local function __FUNC_803C_(arg0, arg1)
				local function __FUNC_81B7_(arg0, arg1)
					local function __FUNC_830C_(arg0, arg1)
						local function __FUNC_8487_(arg0, arg1)
							local function __FUNC_85DC_(arg0, arg1)
								local function __FUNC_8757_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8757_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8757_)
							end

							if arg1.interrupted then
								__FUNC_85DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85DC_)
						end

						if arg1.interrupted then
							__FUNC_8487_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8487_)
					end

					if arg1.interrupted then
						__FUNC_830C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_830C_)
				end

				if arg1.interrupted then
					__FUNC_81B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81B7_)
			end

			if arg1.interrupted then
				__FUNC_803C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_803C_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7EE5_(registerVal16, {})
		local function __FUNC_8937_(arg0, arg1)
			local function __FUNC_8A8C_(arg0, arg1)
				local function __FUNC_8C07_(arg0, arg1)
					local function __FUNC_8D5C_(arg0, arg1)
						local function __FUNC_8ED7_(arg0, arg1)
							local function __FUNC_902C_(arg0, arg1)
								local function __FUNC_91A7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_91A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91A7_)
							end

							if arg1.interrupted then
								__FUNC_902C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_902C_)
						end

						if arg1.interrupted then
							__FUNC_8ED7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ED7_)
					end

					if arg1.interrupted then
						__FUNC_8D5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D5C_)
				end

				if arg1.interrupted then
					__FUNC_8C07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C07_)
			end

			if arg1.interrupted then
				__FUNC_8A8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A8C_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8937_(registerVal17, {})
	end

	registerVal21.LoseFocus = __FUNC_5C19_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_9387_()
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
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_9387_
	local function __FUNC_9A31_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_9DA6_(arg0, arg1)
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
		__FUNC_9DA6_(registerVal4, {})
		local function __FUNC_9F59_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_9F59_(registerVal7, {})
		local function __FUNC_A10D_(arg0, arg1)
			local function __FUNC_A264_(arg0, arg1)
				local function __FUNC_A3DF_(arg0, arg1)
					local function __FUNC_A534_(arg0, arg1)
						local function __FUNC_A6AF_(arg0, arg1)
							local function __FUNC_A804_(arg0, arg1)
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
								__FUNC_A804_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A804_)
						end

						if arg1.interrupted then
							__FUNC_A6AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6AF_)
					end

					if arg1.interrupted then
						__FUNC_A534_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A534_)
				end

				if arg1.interrupted then
					__FUNC_A3DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3DF_)
			end

			if arg1.interrupted then
				__FUNC_A264_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A264_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_A10D_(registerVal13, {})
		local function __FUNC_A9B9_(arg0, arg1)
			local function __FUNC_AB10_(arg0, arg1)
				local function __FUNC_AC8B_(arg0, arg1)
					local function __FUNC_ADE0_(arg0, arg1)
						local function __FUNC_AF5B_(arg0, arg1)
							local function __FUNC_B0B0_(arg0, arg1)
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
								__FUNC_B0B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0B0_)
						end

						if arg1.interrupted then
							__FUNC_AF5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF5B_)
					end

					if arg1.interrupted then
						__FUNC_ADE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADE0_)
				end

				if arg1.interrupted then
					__FUNC_AC8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC8B_)
			end

			if arg1.interrupted then
				__FUNC_AB10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB10_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A9B9_(registerVal14, {})
		local function __FUNC_B265_(arg0, arg1)
			local function __FUNC_B3BC_(arg0, arg1)
				local function __FUNC_B537_(arg0, arg1)
					local function __FUNC_B6AF_(arg0, arg1)
						local function __FUNC_B827_(arg0, arg1)
							local function __FUNC_B97C_(arg0, arg1)
								local function __FUNC_BAF7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_BAF7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAF7_)
							end

							if arg1.interrupted then
								__FUNC_B97C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B97C_)
						end

						if arg1.interrupted then
							__FUNC_B827_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B827_)
					end

					if arg1.interrupted then
						__FUNC_B6AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6AF_)
				end

				if arg1.interrupted then
					__FUNC_B537_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B537_)
			end

			if arg1.interrupted then
				__FUNC_B3BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3BC_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_B265_(registerVal15, {})
		local function __FUNC_BCD7_(arg0, arg1)
			local function __FUNC_BE2C_(arg0, arg1)
				local function __FUNC_BFA7_(arg0, arg1)
					local function __FUNC_C0FC_(arg0, arg1)
						local function __FUNC_C277_(arg0, arg1)
							local function __FUNC_C3CC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C3CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3CC_)
						end

						if arg1.interrupted then
							__FUNC_C277_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C277_)
					end

					if arg1.interrupted then
						__FUNC_C0FC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C0FC_)
				end

				if arg1.interrupted then
					__FUNC_BFA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFA7_)
			end

			if arg1.interrupted then
				__FUNC_BE2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE2C_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_BCD7_(registerVal16, {})
		local function __FUNC_C5AF_(arg0, arg1)
			local function __FUNC_C704_(arg0, arg1)
				local function __FUNC_C87F_(arg0, arg1)
					local function __FUNC_C9D4_(arg0, arg1)
						local function __FUNC_CB4F_(arg0, arg1)
							local function __FUNC_CCA4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CCA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCA4_)
						end

						if arg1.interrupted then
							__FUNC_CB4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB4F_)
					end

					if arg1.interrupted then
						__FUNC_C9D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9D4_)
				end

				if arg1.interrupted then
					__FUNC_C87F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C87F_)
			end

			if arg1.interrupted then
				__FUNC_C704_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C704_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C5AF_(registerVal17, {})
	end

	registerVal21.GainFocus = __FUNC_9A31_
	local function __FUNC_CE87_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_CE87_
	local function __FUNC_D228_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_D599_(arg0, arg1)
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
		__FUNC_D599_(registerVal4, {})
		local function __FUNC_D74D_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_D74D_(registerVal7, {})
		local function __FUNC_D901_(arg0, arg1)
			local function __FUNC_DA7B_(arg0, arg1)
				local function __FUNC_DBF3_(arg0, arg1)
					local function __FUNC_DD6B_(arg0, arg1)
						local function __FUNC_DEC0_(arg0, arg1)
							local function __FUNC_E03B_(arg0, arg1)
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
								__FUNC_E03B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E03B_)
						end

						if arg1.interrupted then
							__FUNC_DEC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEC0_)
					end

					if arg1.interrupted then
						__FUNC_DD6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD6B_)
				end

				if arg1.interrupted then
					__FUNC_DBF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBF3_)
			end

			if arg1.interrupted then
				__FUNC_DA7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA7B_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_D901_(registerVal13, {})
		local function __FUNC_E1ED_(arg0, arg1)
			local function __FUNC_E367_(arg0, arg1)
				local function __FUNC_E4DF_(arg0, arg1)
					local function __FUNC_E657_(arg0, arg1)
						local function __FUNC_E7AC_(arg0, arg1)
							local function __FUNC_E927_(arg0, arg1)
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
								__FUNC_E927_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E927_)
						end

						if arg1.interrupted then
							__FUNC_E7AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7AC_)
					end

					if arg1.interrupted then
						__FUNC_E657_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E657_)
				end

				if arg1.interrupted then
					__FUNC_E4DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4DF_)
			end

			if arg1.interrupted then
				__FUNC_E367_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E367_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E1ED_(registerVal14, {})
		local function __FUNC_EAD9_(arg0, arg1)
			local function __FUNC_EC30_(arg0, arg1)
				local function __FUNC_EDAB_(arg0, arg1)
					local function __FUNC_EF23_(arg0, arg1)
						local function __FUNC_F09B_(arg0, arg1)
							local function __FUNC_F1F0_(arg0, arg1)
								local function __FUNC_F36B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_F36B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F36B_)
							end

							if arg1.interrupted then
								__FUNC_F1F0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1F0_)
						end

						if arg1.interrupted then
							__FUNC_F09B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F09B_)
					end

					if arg1.interrupted then
						__FUNC_EF23_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF23_)
				end

				if arg1.interrupted then
					__FUNC_EDAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDAB_)
			end

			if arg1.interrupted then
				__FUNC_EC30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC30_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_EAD9_(registerVal15, {})
		local function __FUNC_F54B_(arg0, arg1)
			local function __FUNC_F6A0_(arg0, arg1)
				local function __FUNC_F81B_(arg0, arg1)
					local function __FUNC_F970_(arg0, arg1)
						local function __FUNC_FAEB_(arg0, arg1)
							local function __FUNC_FC40_(arg0, arg1)
								local function __FUNC_FDBB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_FDBB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDBB_)
							end

							if arg1.interrupted then
								__FUNC_FC40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC40_)
						end

						if arg1.interrupted then
							__FUNC_FAEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAEB_)
					end

					if arg1.interrupted then
						__FUNC_F970_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F970_)
				end

				if arg1.interrupted then
					__FUNC_F81B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F81B_)
			end

			if arg1.interrupted then
				__FUNC_F6A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6A0_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F54B_(registerVal16, {})
		local function __FUNC_FF9B_(arg0, arg1)
			local function __FUNC_100F0_(arg0, arg1)
				local function __FUNC_1026B_(arg0, arg1)
					local function __FUNC_103C0_(arg0, arg1)
						local function __FUNC_1053B_(arg0, arg1)
							local function __FUNC_10690_(arg0, arg1)
								local function __FUNC_1080B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1080B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1080B_)
							end

							if arg1.interrupted then
								__FUNC_10690_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10690_)
						end

						if arg1.interrupted then
							__FUNC_1053B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1053B_)
					end

					if arg1.interrupted then
						__FUNC_103C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103C0_)
				end

				if arg1.interrupted then
					__FUNC_1026B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1026B_)
			end

			if arg1.interrupted then
				__FUNC_100F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100F0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_FF9B_(registerVal17, {})
	end

	registerVal21.LoseFocus = __FUNC_D228_
	registerVal20.Equipped = registerVal21
	registerVal21 = {}
	local function __FUNC_109EB_()
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
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_109EB_
	local function __FUNC_11090_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_11350_(arg0, arg1)
			local function __FUNC_114A8_(arg0, arg1)
				local function __FUNC_11623_(arg0, arg1)
					local function __FUNC_11778_(arg0, arg1)
						local function __FUNC_118F3_(arg0, arg1)
							local function __FUNC_11A48_(arg0, arg1)
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
								__FUNC_11A48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A48_)
						end

						if arg1.interrupted then
							__FUNC_118F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118F3_)
					end

					if arg1.interrupted then
						__FUNC_11778_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11778_)
				end

				if arg1.interrupted then
					__FUNC_11623_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11623_)
			end

			if arg1.interrupted then
				__FUNC_114A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114A8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_11350_(registerVal13, {})
		local function __FUNC_11BFD_(arg0, arg1)
			local function __FUNC_11D54_(arg0, arg1)
				local function __FUNC_11ECF_(arg0, arg1)
					local function __FUNC_12024_(arg0, arg1)
						local function __FUNC_1219F_(arg0, arg1)
							local function __FUNC_122F4_(arg0, arg1)
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
								__FUNC_122F4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122F4_)
						end

						if arg1.interrupted then
							__FUNC_1219F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1219F_)
					end

					if arg1.interrupted then
						__FUNC_12024_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12024_)
				end

				if arg1.interrupted then
					__FUNC_11ECF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11ECF_)
			end

			if arg1.interrupted then
				__FUNC_11D54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D54_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_11BFD_(registerVal14, {})
		local function __FUNC_124A9_(arg0, arg1)
			local function __FUNC_12600_(arg0, arg1)
				local function __FUNC_1277B_(arg0, arg1)
					local function __FUNC_128F3_(arg0, arg1)
						local function __FUNC_12A6B_(arg0, arg1)
							local function __FUNC_12BC0_(arg0, arg1)
								local function __FUNC_12D3B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_12D3B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D3B_)
							end

							if arg1.interrupted then
								__FUNC_12BC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BC0_)
						end

						if arg1.interrupted then
							__FUNC_12A6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A6B_)
					end

					if arg1.interrupted then
						__FUNC_128F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128F3_)
				end

				if arg1.interrupted then
					__FUNC_1277B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1277B_)
			end

			if arg1.interrupted then
				__FUNC_12600_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12600_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_124A9_(registerVal15, {})
		local function __FUNC_12F1B_(arg0, arg1)
			local function __FUNC_13070_(arg0, arg1)
				local function __FUNC_131EB_(arg0, arg1)
					local function __FUNC_13340_(arg0, arg1)
						local function __FUNC_134BB_(arg0, arg1)
							local function __FUNC_13610_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_13610_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13610_)
						end

						if arg1.interrupted then
							__FUNC_134BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134BB_)
					end

					if arg1.interrupted then
						__FUNC_13340_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13340_)
				end

				if arg1.interrupted then
					__FUNC_131EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131EB_)
			end

			if arg1.interrupted then
				__FUNC_13070_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13070_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_12F1B_(registerVal16, {})
		local function __FUNC_137F3_(arg0, arg1)
			local function __FUNC_13948_(arg0, arg1)
				local function __FUNC_13AC3_(arg0, arg1)
					local function __FUNC_13C18_(arg0, arg1)
						local function __FUNC_13D93_(arg0, arg1)
							local function __FUNC_13EE8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_13EE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EE8_)
						end

						if arg1.interrupted then
							__FUNC_13D93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D93_)
					end

					if arg1.interrupted then
						__FUNC_13C18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C18_)
				end

				if arg1.interrupted then
					__FUNC_13AC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AC3_)
			end

			if arg1.interrupted then
				__FUNC_13948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13948_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_137F3_(registerVal17, {})
	end

	registerVal21.GainFocus = __FUNC_11090_
	local function __FUNC_140CB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_140CB_
	local function __FUNC_1435E_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_14591_(arg0, arg1)
			local function __FUNC_1470B_(arg0, arg1)
				local function __FUNC_14883_(arg0, arg1)
					local function __FUNC_149FB_(arg0, arg1)
						local function __FUNC_14B50_(arg0, arg1)
							local function __FUNC_14CCB_(arg0, arg1)
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
								__FUNC_14CCB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14CCB_)
						end

						if arg1.interrupted then
							__FUNC_14B50_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B50_)
					end

					if arg1.interrupted then
						__FUNC_149FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149FB_)
				end

				if arg1.interrupted then
					__FUNC_14883_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14883_)
			end

			if arg1.interrupted then
				__FUNC_1470B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1470B_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_14591_(registerVal13, {})
		local function __FUNC_14E7D_(arg0, arg1)
			local function __FUNC_14FF7_(arg0, arg1)
				local function __FUNC_1516F_(arg0, arg1)
					local function __FUNC_152E7_(arg0, arg1)
						local function __FUNC_1543C_(arg0, arg1)
							local function __FUNC_155B7_(arg0, arg1)
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
								__FUNC_155B7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155B7_)
						end

						if arg1.interrupted then
							__FUNC_1543C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1543C_)
					end

					if arg1.interrupted then
						__FUNC_152E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152E7_)
				end

				if arg1.interrupted then
					__FUNC_1516F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1516F_)
			end

			if arg1.interrupted then
				__FUNC_14FF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FF7_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_14E7D_(registerVal14, {})
		local function __FUNC_15769_(arg0, arg1)
			local function __FUNC_158C0_(arg0, arg1)
				local function __FUNC_15A3B_(arg0, arg1)
					local function __FUNC_15BB3_(arg0, arg1)
						local function __FUNC_15D2B_(arg0, arg1)
							local function __FUNC_15E80_(arg0, arg1)
								local function __FUNC_15FFB_(arg0, arg1)
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
									__FUNC_15FFB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FFB_)
							end

							if arg1.interrupted then
								__FUNC_15E80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E80_)
						end

						if arg1.interrupted then
							__FUNC_15D2B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D2B_)
					end

					if arg1.interrupted then
						__FUNC_15BB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BB3_)
				end

				if arg1.interrupted then
					__FUNC_15A3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A3B_)
			end

			if arg1.interrupted then
				__FUNC_158C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158C0_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_15769_(registerVal15, {})
		local function __FUNC_161AD_(arg0, arg1)
			local function __FUNC_16304_(arg0, arg1)
				local function __FUNC_1647F_(arg0, arg1)
					local function __FUNC_165D4_(arg0, arg1)
						local function __FUNC_1674F_(arg0, arg1)
							local function __FUNC_168A4_(arg0, arg1)
								local function __FUNC_16A1F_(arg0, arg1)
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
									__FUNC_16A1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A1F_)
							end

							if arg1.interrupted then
								__FUNC_168A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168A4_)
						end

						if arg1.interrupted then
							__FUNC_1674F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1674F_)
					end

					if arg1.interrupted then
						__FUNC_165D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165D4_)
				end

				if arg1.interrupted then
					__FUNC_1647F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1647F_)
			end

			if arg1.interrupted then
				__FUNC_16304_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16304_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_161AD_(registerVal16, {})
		local function __FUNC_16BD1_(arg0, arg1)
			local function __FUNC_16D28_(arg0, arg1)
				local function __FUNC_16EA3_(arg0, arg1)
					local function __FUNC_16FF8_(arg0, arg1)
						local function __FUNC_17173_(arg0, arg1)
							local function __FUNC_172C8_(arg0, arg1)
								local function __FUNC_17443_(arg0, arg1)
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
									__FUNC_17443_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17443_)
							end

							if arg1.interrupted then
								__FUNC_172C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172C8_)
						end

						if arg1.interrupted then
							__FUNC_17173_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17173_)
					end

					if arg1.interrupted then
						__FUNC_16FF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16FF8_)
				end

				if arg1.interrupted then
					__FUNC_16EA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EA3_)
			end

			if arg1.interrupted then
				__FUNC_16D28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D28_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_16BD1_(registerVal17, {})
	end

	registerVal21.LoseFocus = __FUNC_1435E_
	registerVal20.New = registerVal21
	registerVal21 = {}
	local function __FUNC_175F5_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_175F5_
	local function __FUNC_17C78_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_17F38_(arg0, arg1)
			local function __FUNC_18090_(arg0, arg1)
				local function __FUNC_1820B_(arg0, arg1)
					local function __FUNC_18360_(arg0, arg1)
						local function __FUNC_184DB_(arg0, arg1)
							local function __FUNC_18630_(arg0, arg1)
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
								__FUNC_18630_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18630_)
						end

						if arg1.interrupted then
							__FUNC_184DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184DB_)
					end

					if arg1.interrupted then
						__FUNC_18360_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18360_)
				end

				if arg1.interrupted then
					__FUNC_1820B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1820B_)
			end

			if arg1.interrupted then
				__FUNC_18090_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18090_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_17F38_(registerVal13, {})
		local function __FUNC_187E5_(arg0, arg1)
			local function __FUNC_1893C_(arg0, arg1)
				local function __FUNC_18AB7_(arg0, arg1)
					local function __FUNC_18C0C_(arg0, arg1)
						local function __FUNC_18D87_(arg0, arg1)
							local function __FUNC_18EDC_(arg0, arg1)
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
								__FUNC_18EDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EDC_)
						end

						if arg1.interrupted then
							__FUNC_18D87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D87_)
					end

					if arg1.interrupted then
						__FUNC_18C0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C0C_)
				end

				if arg1.interrupted then
					__FUNC_18AB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18AB7_)
			end

			if arg1.interrupted then
				__FUNC_1893C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1893C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_187E5_(registerVal14, {})
		local function __FUNC_19091_(arg0, arg1)
			local function __FUNC_191E8_(arg0, arg1)
				local function __FUNC_19363_(arg0, arg1)
					local function __FUNC_194DB_(arg0, arg1)
						local function __FUNC_19653_(arg0, arg1)
							local function __FUNC_197A8_(arg0, arg1)
								local function __FUNC_19923_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_19923_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19923_)
							end

							if arg1.interrupted then
								__FUNC_197A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197A8_)
						end

						if arg1.interrupted then
							__FUNC_19653_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19653_)
					end

					if arg1.interrupted then
						__FUNC_194DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_194DB_)
				end

				if arg1.interrupted then
					__FUNC_19363_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19363_)
			end

			if arg1.interrupted then
				__FUNC_191E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_191E8_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_19091_(registerVal15, {})
		local function __FUNC_19B03_(arg0, arg1)
			local function __FUNC_19C58_(arg0, arg1)
				local function __FUNC_19DD3_(arg0, arg1)
					local function __FUNC_19F28_(arg0, arg1)
						local function __FUNC_1A0A3_(arg0, arg1)
							local function __FUNC_1A1F8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1A1F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A1F8_)
						end

						if arg1.interrupted then
							__FUNC_1A0A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A0A3_)
					end

					if arg1.interrupted then
						__FUNC_19F28_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F28_)
				end

				if arg1.interrupted then
					__FUNC_19DD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19DD3_)
			end

			if arg1.interrupted then
				__FUNC_19C58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C58_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_19B03_(registerVal16, {})
		local function __FUNC_1A3DB_(arg0, arg1)
			local function __FUNC_1A530_(arg0, arg1)
				local function __FUNC_1A6AB_(arg0, arg1)
					local function __FUNC_1A800_(arg0, arg1)
						local function __FUNC_1A97B_(arg0, arg1)
							local function __FUNC_1AAD0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1AAD0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAD0_)
						end

						if arg1.interrupted then
							__FUNC_1A97B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A97B_)
					end

					if arg1.interrupted then
						__FUNC_1A800_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A800_)
				end

				if arg1.interrupted then
					__FUNC_1A6AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A6AB_)
			end

			if arg1.interrupted then
				__FUNC_1A530_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A530_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1A3DB_(registerVal17, {})
	end

	registerVal21.GainFocus = __FUNC_17C78_
	local function __FUNC_1ACB3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_1ACB3_
	local function __FUNC_1AF46_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1B204_(arg0, arg1)
			local function __FUNC_1B37F_(arg0, arg1)
				local function __FUNC_1B4F7_(arg0, arg1)
					local function __FUNC_1B66F_(arg0, arg1)
						local function __FUNC_1B7C4_(arg0, arg1)
							local function __FUNC_1B93F_(arg0, arg1)
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
								__FUNC_1B93F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B93F_)
						end

						if arg1.interrupted then
							__FUNC_1B7C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7C4_)
					end

					if arg1.interrupted then
						__FUNC_1B66F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B66F_)
				end

				if arg1.interrupted then
					__FUNC_1B4F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4F7_)
			end

			if arg1.interrupted then
				__FUNC_1B37F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B37F_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1B204_(registerVal13, {})
		local function __FUNC_1BAF1_(arg0, arg1)
			local function __FUNC_1BC6B_(arg0, arg1)
				local function __FUNC_1BDE3_(arg0, arg1)
					local function __FUNC_1BF5B_(arg0, arg1)
						local function __FUNC_1C0B0_(arg0, arg1)
							local function __FUNC_1C22B_(arg0, arg1)
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
								__FUNC_1C22B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C22B_)
						end

						if arg1.interrupted then
							__FUNC_1C0B0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0B0_)
					end

					if arg1.interrupted then
						__FUNC_1BF5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BF5B_)
				end

				if arg1.interrupted then
					__FUNC_1BDE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDE3_)
			end

			if arg1.interrupted then
				__FUNC_1BC6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC6B_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1BAF1_(registerVal14, {})
		local function __FUNC_1C3DD_(arg0, arg1)
			local function __FUNC_1C534_(arg0, arg1)
				local function __FUNC_1C6AF_(arg0, arg1)
					local function __FUNC_1C827_(arg0, arg1)
						local function __FUNC_1C99F_(arg0, arg1)
							local function __FUNC_1CAF4_(arg0, arg1)
								local function __FUNC_1CC6F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1CC6F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC6F_)
							end

							if arg1.interrupted then
								__FUNC_1CAF4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CAF4_)
						end

						if arg1.interrupted then
							__FUNC_1C99F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C99F_)
					end

					if arg1.interrupted then
						__FUNC_1C827_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C827_)
				end

				if arg1.interrupted then
					__FUNC_1C6AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C6AF_)
			end

			if arg1.interrupted then
				__FUNC_1C534_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C534_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1C3DD_(registerVal15, {})
		local function __FUNC_1CE4F_(arg0, arg1)
			local function __FUNC_1CFA4_(arg0, arg1)
				local function __FUNC_1D11F_(arg0, arg1)
					local function __FUNC_1D274_(arg0, arg1)
						local function __FUNC_1D3EF_(arg0, arg1)
							local function __FUNC_1D544_(arg0, arg1)
								local function __FUNC_1D6BF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1D6BF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D6BF_)
							end

							if arg1.interrupted then
								__FUNC_1D544_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D544_)
						end

						if arg1.interrupted then
							__FUNC_1D3EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D3EF_)
					end

					if arg1.interrupted then
						__FUNC_1D274_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D274_)
				end

				if arg1.interrupted then
					__FUNC_1D11F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D11F_)
			end

			if arg1.interrupted then
				__FUNC_1CFA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CFA4_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1CE4F_(registerVal16, {})
		local function __FUNC_1D89F_(arg0, arg1)
			local function __FUNC_1D9F4_(arg0, arg1)
				local function __FUNC_1DB6F_(arg0, arg1)
					local function __FUNC_1DCC4_(arg0, arg1)
						local function __FUNC_1DE3F_(arg0, arg1)
							local function __FUNC_1DF94_(arg0, arg1)
								local function __FUNC_1E10F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1E10F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E10F_)
							end

							if arg1.interrupted then
								__FUNC_1DF94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DF94_)
						end

						if arg1.interrupted then
							__FUNC_1DE3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE3F_)
					end

					if arg1.interrupted then
						__FUNC_1DCC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCC4_)
				end

				if arg1.interrupted then
					__FUNC_1DB6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB6F_)
			end

			if arg1.interrupted then
				__FUNC_1D9F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D9F4_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1D89F_(registerVal17, {})
	end

	registerVal21.LoseFocus = __FUNC_1AF46_
	registerVal20.Locked = registerVal21
	registerVal21 = {}
	local function __FUNC_1E2EF_()
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
		registerVal6:completeAnimation()
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.DefaultClip = __FUNC_1E2EF_
	local function __FUNC_1E999_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1ED0E_(arg0, arg1)
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
		__FUNC_1ED0E_(registerVal4, {})
		local function __FUNC_1EEC1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_1EEC1_(registerVal7, {})
		local function __FUNC_1F075_(arg0, arg1)
			local function __FUNC_1F1CC_(arg0, arg1)
				local function __FUNC_1F347_(arg0, arg1)
					local function __FUNC_1F49C_(arg0, arg1)
						local function __FUNC_1F617_(arg0, arg1)
							local function __FUNC_1F76C_(arg0, arg1)
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
								__FUNC_1F76C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F76C_)
						end

						if arg1.interrupted then
							__FUNC_1F617_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F617_)
					end

					if arg1.interrupted then
						__FUNC_1F49C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F49C_)
				end

				if arg1.interrupted then
					__FUNC_1F347_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F347_)
			end

			if arg1.interrupted then
				__FUNC_1F1CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1CC_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1F075_(registerVal13, {})
		local function __FUNC_1F921_(arg0, arg1)
			local function __FUNC_1FA78_(arg0, arg1)
				local function __FUNC_1FBF3_(arg0, arg1)
					local function __FUNC_1FD48_(arg0, arg1)
						local function __FUNC_1FEC3_(arg0, arg1)
							local function __FUNC_20018_(arg0, arg1)
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
								__FUNC_20018_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20018_)
						end

						if arg1.interrupted then
							__FUNC_1FEC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FEC3_)
					end

					if arg1.interrupted then
						__FUNC_1FD48_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD48_)
				end

				if arg1.interrupted then
					__FUNC_1FBF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FBF3_)
			end

			if arg1.interrupted then
				__FUNC_1FA78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA78_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1F921_(registerVal14, {})
		local function __FUNC_201CD_(arg0, arg1)
			local function __FUNC_20324_(arg0, arg1)
				local function __FUNC_2049F_(arg0, arg1)
					local function __FUNC_20617_(arg0, arg1)
						local function __FUNC_2078F_(arg0, arg1)
							local function __FUNC_208E4_(arg0, arg1)
								local function __FUNC_20A5F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_20A5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A5F_)
							end

							if arg1.interrupted then
								__FUNC_208E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208E4_)
						end

						if arg1.interrupted then
							__FUNC_2078F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2078F_)
					end

					if arg1.interrupted then
						__FUNC_20617_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20617_)
				end

				if arg1.interrupted then
					__FUNC_2049F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2049F_)
			end

			if arg1.interrupted then
				__FUNC_20324_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20324_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_201CD_(registerVal15, {})
		local function __FUNC_20C3F_(arg0, arg1)
			local function __FUNC_20D94_(arg0, arg1)
				local function __FUNC_20F0F_(arg0, arg1)
					local function __FUNC_21064_(arg0, arg1)
						local function __FUNC_211DF_(arg0, arg1)
							local function __FUNC_21334_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.090000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_21334_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21334_)
						end

						if arg1.interrupted then
							__FUNC_211DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_211DF_)
					end

					if arg1.interrupted then
						__FUNC_21064_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21064_)
				end

				if arg1.interrupted then
					__FUNC_20F0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F0F_)
			end

			if arg1.interrupted then
				__FUNC_20D94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D94_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_20C3F_(registerVal16, {})
		local function __FUNC_21517_(arg0, arg1)
			local function __FUNC_2166C_(arg0, arg1)
				local function __FUNC_217E7_(arg0, arg1)
					local function __FUNC_2193C_(arg0, arg1)
						local function __FUNC_21AB7_(arg0, arg1)
							local function __FUNC_21C0C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.150000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_21C0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C0C_)
						end

						if arg1.interrupted then
							__FUNC_21AB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AB7_)
					end

					if arg1.interrupted then
						__FUNC_2193C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2193C_)
				end

				if arg1.interrupted then
					__FUNC_217E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217E7_)
			end

			if arg1.interrupted then
				__FUNC_2166C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2166C_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_21517_(registerVal17, {})
	end

	registerVal21.GainFocus = __FUNC_1E999_
	local function __FUNC_21DEF_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal21.Focus = __FUNC_21DEF_
	local function __FUNC_2213B_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_224A9_(arg0, arg1)
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
		__FUNC_224A9_(registerVal4, {})
		local function __FUNC_2265D_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_2265D_(registerVal7, {})
		local function __FUNC_22811_(arg0, arg1)
			local function __FUNC_2298B_(arg0, arg1)
				local function __FUNC_22B03_(arg0, arg1)
					local function __FUNC_22C7B_(arg0, arg1)
						local function __FUNC_22DD0_(arg0, arg1)
							local function __FUNC_22F4B_(arg0, arg1)
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
								__FUNC_22F4B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22F4B_)
						end

						if arg1.interrupted then
							__FUNC_22DD0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22DD0_)
					end

					if arg1.interrupted then
						__FUNC_22C7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C7B_)
				end

				if arg1.interrupted then
					__FUNC_22B03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22B03_)
			end

			if arg1.interrupted then
				__FUNC_2298B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2298B_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_22811_(registerVal13, {})
		local function __FUNC_230FD_(arg0, arg1)
			local function __FUNC_23277_(arg0, arg1)
				local function __FUNC_233EF_(arg0, arg1)
					local function __FUNC_23567_(arg0, arg1)
						local function __FUNC_236BC_(arg0, arg1)
							local function __FUNC_23837_(arg0, arg1)
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
								__FUNC_23837_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23837_)
						end

						if arg1.interrupted then
							__FUNC_236BC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_236BC_)
					end

					if arg1.interrupted then
						__FUNC_23567_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23567_)
				end

				if arg1.interrupted then
					__FUNC_233EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_233EF_)
			end

			if arg1.interrupted then
				__FUNC_23277_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23277_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_230FD_(registerVal14, {})
		local function __FUNC_239E9_(arg0, arg1)
			local function __FUNC_23B40_(arg0, arg1)
				local function __FUNC_23CBB_(arg0, arg1)
					local function __FUNC_23E33_(arg0, arg1)
						local function __FUNC_23FAB_(arg0, arg1)
							local function __FUNC_24100_(arg0, arg1)
								local function __FUNC_2427B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.300000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2427B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2427B_)
							end

							if arg1.interrupted then
								__FUNC_24100_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24100_)
						end

						if arg1.interrupted then
							__FUNC_23FAB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FAB_)
					end

					if arg1.interrupted then
						__FUNC_23E33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E33_)
				end

				if arg1.interrupted then
					__FUNC_23CBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CBB_)
			end

			if arg1.interrupted then
				__FUNC_23B40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B40_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 0.300000, 0.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_239E9_(registerVal15, {})
		local function __FUNC_2445B_(arg0, arg1)
			local function __FUNC_245B0_(arg0, arg1)
				local function __FUNC_2472B_(arg0, arg1)
					local function __FUNC_24880_(arg0, arg1)
						local function __FUNC_249FB_(arg0, arg1)
							local function __FUNC_24B50_(arg0, arg1)
								local function __FUNC_24CCB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.090000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_24CCB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24CCB_)
							end

							if arg1.interrupted then
								__FUNC_24B50_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B50_)
						end

						if arg1.interrupted then
							__FUNC_249FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_249FB_)
					end

					if arg1.interrupted then
						__FUNC_24880_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24880_)
				end

				if arg1.interrupted then
					__FUNC_2472B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2472B_)
			end

			if arg1.interrupted then
				__FUNC_245B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245B0_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 0.090000, 0.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2445B_(registerVal16, {})
		local function __FUNC_24EAB_(arg0, arg1)
			local function __FUNC_25000_(arg0, arg1)
				local function __FUNC_2517B_(arg0, arg1)
					local function __FUNC_252D0_(arg0, arg1)
						local function __FUNC_2544B_(arg0, arg1)
							local function __FUNC_255A0_(arg0, arg1)
								local function __FUNC_2571B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 0.150000, 0.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2571B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2571B_)
							end

							if arg1.interrupted then
								__FUNC_255A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_255A0_)
						end

						if arg1.interrupted then
							__FUNC_2544B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2544B_)
					end

					if arg1.interrupted then
						__FUNC_252D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252D0_)
				end

				if arg1.interrupted then
					__FUNC_2517B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2517B_)
			end

			if arg1.interrupted then
				__FUNC_25000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25000_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 0.150000, 0.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_24EAB_(registerVal17, {})
	end

	registerVal21.LoseFocus = __FUNC_2213B_
	registerVal20.MutuallyExclusive = registerVal21
	registerVal21 = {}
	local function __FUNC_258FB_()
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
		registerVal2.itemImageSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.alertIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_258FB_
	local function __FUNC_25FCC_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_26429_(arg0, arg1)
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
		__FUNC_26429_(registerVal4, {})
		local function __FUNC_265DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.300000)
		registerVal2.itemImage:setScale(1.000000)
		__FUNC_265DD_(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_267B4_(arg0, arg1)
			local function __FUNC_2690C_(arg0, arg1)
				local function __FUNC_26A87_(arg0, arg1)
					local function __FUNC_26BFF_(arg0, arg1)
						local function __FUNC_26D77_(arg0, arg1)
							local function __FUNC_26ECC_(arg0, arg1)
								local function __FUNC_27047_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_27047_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27047_)
							end

							if arg1.interrupted then
								__FUNC_26ECC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26ECC_)
						end

						if arg1.interrupted then
							__FUNC_26D77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D77_)
					end

					if arg1.interrupted then
						__FUNC_26BFF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26BFF_)
				end

				if arg1.interrupted then
					__FUNC_26A87_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A87_)
			end

			if arg1.interrupted then
				__FUNC_2690C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2690C_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_267B4_(registerVal15, {})
		local function __FUNC_27222_(arg0, arg1)
			local function __FUNC_27378_(arg0, arg1)
				local function __FUNC_274F3_(arg0, arg1)
					local function __FUNC_27648_(arg0, arg1)
						local function __FUNC_277C3_(arg0, arg1)
							local function __FUNC_27918_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_27918_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27918_)
						end

						if arg1.interrupted then
							__FUNC_277C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277C3_)
					end

					if arg1.interrupted then
						__FUNC_27648_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27648_)
				end

				if arg1.interrupted then
					__FUNC_274F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_274F3_)
			end

			if arg1.interrupted then
				__FUNC_27378_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27378_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_27222_(registerVal16, {})
		local function __FUNC_27AF6_(arg0, arg1)
			local function __FUNC_27C4C_(arg0, arg1)
				local function __FUNC_27DC7_(arg0, arg1)
					local function __FUNC_27F1C_(arg0, arg1)
						local function __FUNC_28097_(arg0, arg1)
							local function __FUNC_281EC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_281EC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_281EC_)
						end

						if arg1.interrupted then
							__FUNC_28097_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28097_)
					end

					if arg1.interrupted then
						__FUNC_27F1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F1C_)
				end

				if arg1.interrupted then
					__FUNC_27DC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27DC7_)
			end

			if arg1.interrupted then
				__FUNC_27C4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C4C_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_27AF6_(registerVal17, {})
		local function __FUNC_283CA_(arg0, arg1)
			local function __FUNC_28520_(arg0, arg1)
				local function __FUNC_2869B_(arg0, arg1)
					local function __FUNC_287F0_(arg0, arg1)
						local function __FUNC_2896B_(arg0, arg1)
							local function __FUNC_28AC0_(arg0, arg1)
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
								__FUNC_28AC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28AC0_)
						end

						if arg1.interrupted then
							__FUNC_2896B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2896B_)
					end

					if arg1.interrupted then
						__FUNC_287F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_287F0_)
				end

				if arg1.interrupted then
					__FUNC_2869B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2869B_)
			end

			if arg1.interrupted then
				__FUNC_28520_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28520_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_283CA_(registerVal18, {})
		local function __FUNC_28C75_(arg0, arg1)
			local function __FUNC_28DCC_(arg0, arg1)
				local function __FUNC_28F47_(arg0, arg1)
					local function __FUNC_2909C_(arg0, arg1)
						local function __FUNC_29217_(arg0, arg1)
							local function __FUNC_2936C_(arg0, arg1)
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
								__FUNC_2936C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2936C_)
						end

						if arg1.interrupted then
							__FUNC_29217_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29217_)
					end

					if arg1.interrupted then
						__FUNC_2909C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2909C_)
				end

				if arg1.interrupted then
					__FUNC_28F47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F47_)
			end

			if arg1.interrupted then
				__FUNC_28DCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28DCC_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		__FUNC_28C75_(registerVal19, {})
	end

	registerVal21.GainFocus = __FUNC_25FCC_
	local function __FUNC_29521_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.Focus = __FUNC_29521_
	local function __FUNC_2997A_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_29D83_(arg0, arg1)
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
		__FUNC_29D83_(registerVal4, {})
		local function __FUNC_29F35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		__FUNC_29F35_(registerVal7, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_2A0E9_(arg0, arg1)
			local function __FUNC_2A240_(arg0, arg1)
				local function __FUNC_2A3BB_(arg0, arg1)
					local function __FUNC_2A533_(arg0, arg1)
						local function __FUNC_2A6AB_(arg0, arg1)
							local function __FUNC_2A800_(arg0, arg1)
								local function __FUNC_2A97B_(arg0, arg1)
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
									__FUNC_2A97B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A97B_)
							end

							if arg1.interrupted then
								__FUNC_2A800_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A800_)
						end

						if arg1.interrupted then
							__FUNC_2A6AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A6AB_)
					end

					if arg1.interrupted then
						__FUNC_2A533_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A533_)
				end

				if arg1.interrupted then
					__FUNC_2A3BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A3BB_)
			end

			if arg1.interrupted then
				__FUNC_2A240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A240_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2A0E9_(registerVal15, {})
		local function __FUNC_2AB2D_(arg0, arg1)
			local function __FUNC_2AC84_(arg0, arg1)
				local function __FUNC_2ADFF_(arg0, arg1)
					local function __FUNC_2AF54_(arg0, arg1)
						local function __FUNC_2B0CF_(arg0, arg1)
							local function __FUNC_2B224_(arg0, arg1)
								local function __FUNC_2B39F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2B39F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B39F_)
							end

							if arg1.interrupted then
								__FUNC_2B224_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B224_)
						end

						if arg1.interrupted then
							__FUNC_2B0CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B0CF_)
					end

					if arg1.interrupted then
						__FUNC_2AF54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF54_)
				end

				if arg1.interrupted then
					__FUNC_2ADFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ADFF_)
			end

			if arg1.interrupted then
				__FUNC_2AC84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC84_)
		end

		registerVal16:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2AB2D_(registerVal16, {})
		local function __FUNC_2B57A_(arg0, arg1)
			local function __FUNC_2B6D0_(arg0, arg1)
				local function __FUNC_2B84B_(arg0, arg1)
					local function __FUNC_2B9A0_(arg0, arg1)
						local function __FUNC_2BB1B_(arg0, arg1)
							local function __FUNC_2BC70_(arg0, arg1)
								local function __FUNC_2BDEB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setRGB(1.000000, 1.000000, 1.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2BDEB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDEB_)
							end

							if arg1.interrupted then
								__FUNC_2BC70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC70_)
						end

						if arg1.interrupted then
							__FUNC_2BB1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BB1B_)
					end

					if arg1.interrupted then
						__FUNC_2B9A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9A0_)
				end

				if arg1.interrupted then
					__FUNC_2B84B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B84B_)
			end

			if arg1.interrupted then
				__FUNC_2B6D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B6D0_)
		end

		registerVal17:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2B57A_(registerVal17, {})
		local function __FUNC_2BFC6_(arg0, arg1)
			local function __FUNC_2C13F_(arg0, arg1)
				local function __FUNC_2C2B7_(arg0, arg1)
					local function __FUNC_2C42F_(arg0, arg1)
						local function __FUNC_2C584_(arg0, arg1)
							local function __FUNC_2C6FF_(arg0, arg1)
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
								__FUNC_2C6FF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6FF_)
						end

						if arg1.interrupted then
							__FUNC_2C584_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C584_)
					end

					if arg1.interrupted then
						__FUNC_2C42F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C42F_)
				end

				if arg1.interrupted then
					__FUNC_2C2B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C2B7_)
			end

			if arg1.interrupted then
				__FUNC_2C13F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C13F_)
		end

		registerVal18:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_2BFC6_(registerVal18, {})
		local function __FUNC_2C8B1_(arg0, arg1)
			local function __FUNC_2CA2B_(arg0, arg1)
				local function __FUNC_2CBA3_(arg0, arg1)
					local function __FUNC_2CD1B_(arg0, arg1)
						local function __FUNC_2CE70_(arg0, arg1)
							local function __FUNC_2CFEB_(arg0, arg1)
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
								__FUNC_2CFEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CFEB_)
						end

						if arg1.interrupted then
							__FUNC_2CE70_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE70_)
					end

					if arg1.interrupted then
						__FUNC_2CD1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CD1B_)
				end

				if arg1.interrupted then
					__FUNC_2CBA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBA3_)
			end

			if arg1.interrupted then
				__FUNC_2CA2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA2B_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		__FUNC_2C8B1_(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_2997A_
	registerVal20.Invalid = registerVal21
	registerVal2.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Equipped"
	local function __FUNC_2D19D_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_2D19D_
	local registerVal24 = {}
	registerVal24.stateName = "New"
	local function __FUNC_2D234_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_2D234_
	local registerVal25 = {}
	registerVal25.stateName = "Locked"
	local function __FUNC_2D2C3_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal25.condition = __FUNC_2D2C3_
	local registerVal26 = {}
	registerVal26.stateName = "MutuallyExclusive"
	local function __FUNC_2D31D_(arg0, arg2, arg3)
		return IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
	end

	registerVal26.condition = __FUNC_2D31D_
	local registerVal27 = {}
	registerVal27.stateName = "Invalid"
	local function __FUNC_2D38D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal27.condition = __FUNC_2D38D_
	registerVal22 = {registerVal23, registerVal24, registerVal25, registerVal26, registerVal27}
	registerVal2:mergeStateConditions(registerVal22)
	local function __FUNC_2D3D9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2D3D9_)
	local function __FUNC_2D4F7_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton:close()
		arg0.lockedIcon:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.itemImageSolid:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D4F7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

