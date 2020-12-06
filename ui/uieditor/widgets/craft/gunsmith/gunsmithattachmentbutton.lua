-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
require("ui.uieditor.widgets.PC.Craft.Gunsmith.GunsmithRemoveButton")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local function __FUNC_4E6_(arg0, arg1)
	local function __FUNC_589_(arg0, arg1)
		arg0:setHandleMouseButton(false)
	end

	arg0:registerEventHandler("disable_mouse_button", __FUNC_589_)
	local function __FUNC_5DE_(arg0, arg1)
		arg0:setHandleMouseButton(true)
	end

	arg0:registerEventHandler("enable_mouse_button", __FUNC_5DE_)
end

local function __FUNC_632_(arg0, arg1)
	if CoD.isPC then
		__FUNC_4E6_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GunsmithAttachmentButton = registerVal3
local function __FUNC_69F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithAttachmentButton)
	registerVal2.id = "GunsmithAttachmentButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
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
	registerVal2:addElement(registerVal6)
	registerVal2.attachmentImage = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal9:setRGB(1.000000, 0.300000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBorder = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal10:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal10:setRGB(1.000000, 0.090000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.glitch = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal11:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal12:setTopBottom(false, false, -8.250000, 7.750000)
	registerVal12:setRGB(0.920000, 0.430000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.plusIcon = registerVal12
	local registerVal13 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal13:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZoom(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusWhiteT = registerVal13
	local registerVal14 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusWhiteB = registerVal14
	local registerVal15 = CoD.GunsmithRemoveButton.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 47.000000, 62.000000)
	registerVal15:setTopBottom(true, false, 2.000000, 17.000000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.removeButton = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 24.000000, -24.000000)
	registerVal16:setTopBottom(false, true, -29.500000, -17.500000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_iconoptics"))
	registerVal2:addElement(registerVal16)
	registerVal2.opticIndicator = registerVal16
	local registerVal17 = CoD.ItemHintText.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -82.000000, 82.000000)
	registerVal17:setTopBottom(false, true, 17.000000, 47.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17.textCenterAlign:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	registerVal17.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1AB6_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_1AB6_)
	registerVal2:addElement(registerVal17)
	registerVal2.itemHintText = registerVal17
	local registerVal18 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal18:setTopBottom(false, true, 4.000000, 14.000000)
	registerVal18:setAlpha(0.000000)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "NoHintText"
	local function __FUNC_1B06_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_1B06_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal2:addElement(registerVal18)
	registerVal2.hintArrow = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1B51_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1B51_
	local function __FUNC_211D_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_250A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_250A_(registerVal4, {})
		local function __FUNC_26BD_(arg0, arg1)
			local function __FUNC_2814_(arg0, arg1)
				local function __FUNC_298F_(arg0, arg1)
					local function __FUNC_2AE4_(arg0, arg1)
						local function __FUNC_2C5F_(arg0, arg1)
							local function __FUNC_2DB4_(arg0, arg1)
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
								__FUNC_2DB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB4_)
						end

						if arg1.interrupted then
							__FUNC_2C5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C5F_)
					end

					if arg1.interrupted then
						__FUNC_2AE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AE4_)
				end

				if arg1.interrupted then
					__FUNC_298F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298F_)
			end

			if arg1.interrupted then
				__FUNC_2814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2814_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_26BD_(registerVal7, {})
		local function __FUNC_2F69_(arg0, arg1)
			local function __FUNC_30C0_(arg0, arg1)
				local function __FUNC_323B_(arg0, arg1)
					local function __FUNC_3390_(arg0, arg1)
						local function __FUNC_350B_(arg0, arg1)
							local function __FUNC_3660_(arg0, arg1)
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
								__FUNC_3660_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3660_)
						end

						if arg1.interrupted then
							__FUNC_350B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350B_)
					end

					if arg1.interrupted then
						__FUNC_3390_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3390_)
				end

				if arg1.interrupted then
					__FUNC_323B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_323B_)
			end

			if arg1.interrupted then
				__FUNC_30C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C0_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2F69_(registerVal8, {})
		local function __FUNC_3815_(arg0, arg1)
			local function __FUNC_396C_(arg0, arg1)
				local function __FUNC_3AE7_(arg0, arg1)
					local function __FUNC_3C5F_(arg0, arg1)
						local function __FUNC_3DD7_(arg0, arg1)
							local function __FUNC_3F2C_(arg0, arg1)
								local function __FUNC_40A7_(arg0, arg1)
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
									__FUNC_40A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40A7_)
							end

							if arg1.interrupted then
								__FUNC_3F2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F2C_)
						end

						if arg1.interrupted then
							__FUNC_3DD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DD7_)
					end

					if arg1.interrupted then
						__FUNC_3C5F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C5F_)
				end

				if arg1.interrupted then
					__FUNC_3AE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AE7_)
			end

			if arg1.interrupted then
				__FUNC_396C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_396C_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3815_(registerVal9, {})
		local function __FUNC_4259_(arg0, arg1)
			local function __FUNC_43B0_(arg0, arg1)
				local function __FUNC_452B_(arg0, arg1)
					local function __FUNC_4680_(arg0, arg1)
						local function __FUNC_47FB_(arg0, arg1)
							local function __FUNC_4950_(arg0, arg1)
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
								__FUNC_4950_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4950_)
						end

						if arg1.interrupted then
							__FUNC_47FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47FB_)
					end

					if arg1.interrupted then
						__FUNC_4680_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4680_)
				end

				if arg1.interrupted then
					__FUNC_452B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_452B_)
			end

			if arg1.interrupted then
				__FUNC_43B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B0_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4259_(registerVal10, {})
		local function __FUNC_4B05_(arg0, arg1)
			local function __FUNC_4C5C_(arg0, arg1)
				local function __FUNC_4DD7_(arg0, arg1)
					local function __FUNC_4F2C_(arg0, arg1)
						local function __FUNC_50A7_(arg0, arg1)
							local function __FUNC_51FC_(arg0, arg1)
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
								__FUNC_51FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51FC_)
						end

						if arg1.interrupted then
							__FUNC_50A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50A7_)
					end

					if arg1.interrupted then
						__FUNC_4F2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F2C_)
				end

				if arg1.interrupted then
					__FUNC_4DD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DD7_)
			end

			if arg1.interrupted then
				__FUNC_4C5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5C_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4B05_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.430000, 0.090000)
		registerVal2.plusIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.GainFocus = __FUNC_211D_
	local function __FUNC_53B1_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.430000, 0.090000)
		registerVal2.plusIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.Focus = __FUNC_53B1_
	local function __FUNC_57C4_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_5BA8_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_5BA8_(registerVal4, {})
		local function __FUNC_5D5D_(arg0, arg1)
			local function __FUNC_5ED7_(arg0, arg1)
				local function __FUNC_604F_(arg0, arg1)
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
					__FUNC_604F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_604F_)
			end

			if arg1.interrupted then
				__FUNC_5ED7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ED7_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5D5D_(registerVal7, {})
		local function __FUNC_6201_(arg0, arg1)
			local function __FUNC_637B_(arg0, arg1)
				local function __FUNC_64F3_(arg0, arg1)
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
					__FUNC_64F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64F3_)
			end

			if arg1.interrupted then
				__FUNC_637B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_637B_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6201_(registerVal8, {})
		local function __FUNC_66A5_(arg0, arg1)
			local function __FUNC_67FC_(arg0, arg1)
				local function __FUNC_6977_(arg0, arg1)
					local function __FUNC_6AEF_(arg0, arg1)
						local function __FUNC_6C67_(arg0, arg1)
							local function __FUNC_6DBC_(arg0, arg1)
								local function __FUNC_6F37_(arg0, arg1)
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
									__FUNC_6F37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F37_)
							end

							if arg1.interrupted then
								__FUNC_6DBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DBC_)
						end

						if arg1.interrupted then
							__FUNC_6C67_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C67_)
					end

					if arg1.interrupted then
						__FUNC_6AEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AEF_)
				end

				if arg1.interrupted then
					__FUNC_6977_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6977_)
			end

			if arg1.interrupted then
				__FUNC_67FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67FC_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_66A5_(registerVal9, {})
		local function __FUNC_70E9_(arg0, arg1)
			local function __FUNC_7240_(arg0, arg1)
				local function __FUNC_73BB_(arg0, arg1)
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
					__FUNC_73BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73BB_)
			end

			if arg1.interrupted then
				__FUNC_7240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7240_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_70E9_(registerVal10, {})
		local function __FUNC_756D_(arg0, arg1)
			local function __FUNC_76C4_(arg0, arg1)
				local function __FUNC_783F_(arg0, arg1)
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
					__FUNC_783F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_783F_)
			end

			if arg1.interrupted then
				__FUNC_76C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76C4_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_756D_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.LoseFocus = __FUNC_57C4_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_79F1_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(0.980000, 0.370000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_79F1_
	local function __FUNC_7E13_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_824C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_824C_(registerVal4, {})
		local function __FUNC_8401_(arg0, arg1)
			local function __FUNC_8558_(arg0, arg1)
				local function __FUNC_86D3_(arg0, arg1)
					local function __FUNC_8828_(arg0, arg1)
						local function __FUNC_89A3_(arg0, arg1)
							local function __FUNC_8AF8_(arg0, arg1)
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
								__FUNC_8AF8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AF8_)
						end

						if arg1.interrupted then
							__FUNC_89A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89A3_)
					end

					if arg1.interrupted then
						__FUNC_8828_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8828_)
				end

				if arg1.interrupted then
					__FUNC_86D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86D3_)
			end

			if arg1.interrupted then
				__FUNC_8558_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8558_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_8401_(registerVal7, {})
		local function __FUNC_8CAD_(arg0, arg1)
			local function __FUNC_8E04_(arg0, arg1)
				local function __FUNC_8F7F_(arg0, arg1)
					local function __FUNC_90D4_(arg0, arg1)
						local function __FUNC_924F_(arg0, arg1)
							local function __FUNC_93A4_(arg0, arg1)
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
								__FUNC_93A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93A4_)
						end

						if arg1.interrupted then
							__FUNC_924F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_924F_)
					end

					if arg1.interrupted then
						__FUNC_90D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90D4_)
				end

				if arg1.interrupted then
					__FUNC_8F7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F7F_)
			end

			if arg1.interrupted then
				__FUNC_8E04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E04_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_8CAD_(registerVal8, {})
		local function __FUNC_9559_(arg0, arg1)
			local function __FUNC_96B0_(arg0, arg1)
				local function __FUNC_982B_(arg0, arg1)
					local function __FUNC_99A3_(arg0, arg1)
						local function __FUNC_9B1B_(arg0, arg1)
							local function __FUNC_9C70_(arg0, arg1)
								local function __FUNC_9DEB_(arg0, arg1)
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
									__FUNC_9DEB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DEB_)
							end

							if arg1.interrupted then
								__FUNC_9C70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9C70_)
						end

						if arg1.interrupted then
							__FUNC_9B1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B1B_)
					end

					if arg1.interrupted then
						__FUNC_99A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99A3_)
				end

				if arg1.interrupted then
					__FUNC_982B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_982B_)
			end

			if arg1.interrupted then
				__FUNC_96B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96B0_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9559_(registerVal9, {})
		local function __FUNC_9F9D_(arg0, arg1)
			local function __FUNC_A0F4_(arg0, arg1)
				local function __FUNC_A26F_(arg0, arg1)
					local function __FUNC_A3C4_(arg0, arg1)
						local function __FUNC_A53F_(arg0, arg1)
							local function __FUNC_A694_(arg0, arg1)
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
								__FUNC_A694_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A694_)
						end

						if arg1.interrupted then
							__FUNC_A53F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A53F_)
					end

					if arg1.interrupted then
						__FUNC_A3C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C4_)
				end

				if arg1.interrupted then
					__FUNC_A26F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A26F_)
			end

			if arg1.interrupted then
				__FUNC_A0F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0F4_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_9F9D_(registerVal10, {})
		local function __FUNC_A849_(arg0, arg1)
			local function __FUNC_A9A0_(arg0, arg1)
				local function __FUNC_AB1B_(arg0, arg1)
					local function __FUNC_AC70_(arg0, arg1)
						local function __FUNC_ADEB_(arg0, arg1)
							local function __FUNC_AF40_(arg0, arg1)
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
								__FUNC_AF40_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF40_)
						end

						if arg1.interrupted then
							__FUNC_ADEB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADEB_)
					end

					if arg1.interrupted then
						__FUNC_AC70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC70_)
				end

				if arg1.interrupted then
					__FUNC_AB1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB1B_)
			end

			if arg1.interrupted then
				__FUNC_A9A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9A0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_A849_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.380000, 0.060000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_B0F5_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		__FUNC_B0F5_(registerVal15, {})
		local function __FUNC_B2A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		__FUNC_B2A9_(registerVal17, {})
		local function __FUNC_B45D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_B45D_(registerVal18, {})
	end

	registerVal20.GainFocus = __FUNC_7E13_
	local function __FUNC_B611_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(0.930000, 0.400000, 0.080000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_B9C8_(arg0, arg1)
			local function __FUNC_BB43_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_BB43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB43_)
		end

		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		__FUNC_B9C8_(registerVal17, {})
		local function __FUNC_BCF5_(arg0, arg1)
			local function __FUNC_BE6F_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_BE6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE6F_)
		end

		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		__FUNC_BCF5_(registerVal18, {})
	end

	registerVal20.Focus = __FUNC_B611_
	local function __FUNC_C021_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_C464_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_C464_(registerVal4, {})
		local function __FUNC_C619_(arg0, arg1)
			local function __FUNC_C793_(arg0, arg1)
				local function __FUNC_C90B_(arg0, arg1)
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
					__FUNC_C90B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C90B_)
			end

			if arg1.interrupted then
				__FUNC_C793_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C793_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_C619_(registerVal7, {})
		local function __FUNC_CABD_(arg0, arg1)
			local function __FUNC_CC37_(arg0, arg1)
				local function __FUNC_CDAF_(arg0, arg1)
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
					__FUNC_CDAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDAF_)
			end

			if arg1.interrupted then
				__FUNC_CC37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC37_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_CABD_(registerVal8, {})
		local function __FUNC_CF61_(arg0, arg1)
			local function __FUNC_D0B8_(arg0, arg1)
				local function __FUNC_D233_(arg0, arg1)
					local function __FUNC_D3AB_(arg0, arg1)
						local function __FUNC_D523_(arg0, arg1)
							local function __FUNC_D678_(arg0, arg1)
								local function __FUNC_D7F3_(arg0, arg1)
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
									__FUNC_D7F3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7F3_)
							end

							if arg1.interrupted then
								__FUNC_D678_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D678_)
						end

						if arg1.interrupted then
							__FUNC_D523_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D523_)
					end

					if arg1.interrupted then
						__FUNC_D3AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3AB_)
				end

				if arg1.interrupted then
					__FUNC_D233_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D233_)
			end

			if arg1.interrupted then
				__FUNC_D0B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0B8_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_CF61_(registerVal9, {})
		local function __FUNC_D9A5_(arg0, arg1)
			local function __FUNC_DAFC_(arg0, arg1)
				local function __FUNC_DC77_(arg0, arg1)
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
					__FUNC_DC77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC77_)
			end

			if arg1.interrupted then
				__FUNC_DAFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAFC_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_D9A5_(registerVal10, {})
		local function __FUNC_DE29_(arg0, arg1)
			local function __FUNC_DF80_(arg0, arg1)
				local function __FUNC_E0FB_(arg0, arg1)
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
					__FUNC_E0FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0FB_)
			end

			if arg1.interrupted then
				__FUNC_DF80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF80_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_DE29_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(0.920000, 0.430000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_E2AD_(arg0, arg1)
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

		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		__FUNC_E2AD_(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.LoseFocus = __FUNC_C021_
	registerVal19.IsEquipped = registerVal20
	registerVal20 = {}
	local function __FUNC_E461_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_E461_
	local function __FUNC_E9CB_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_EE2F_(arg0, arg1)
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
		__FUNC_EE2F_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_EFE1_(arg0, arg1)
			local function __FUNC_F138_(arg0, arg1)
				local function __FUNC_F2B3_(arg0, arg1)
					local function __FUNC_F408_(arg0, arg1)
						local function __FUNC_F583_(arg0, arg1)
							local function __FUNC_F6D8_(arg0, arg1)
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
								__FUNC_F6D8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6D8_)
						end

						if arg1.interrupted then
							__FUNC_F583_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F583_)
					end

					if arg1.interrupted then
						__FUNC_F408_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F408_)
				end

				if arg1.interrupted then
					__FUNC_F2B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2B3_)
			end

			if arg1.interrupted then
				__FUNC_F138_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F138_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_EFE1_(registerVal7, {})
		local function __FUNC_F88D_(arg0, arg1)
			local function __FUNC_F9E4_(arg0, arg1)
				local function __FUNC_FB5F_(arg0, arg1)
					local function __FUNC_FCB4_(arg0, arg1)
						local function __FUNC_FE2F_(arg0, arg1)
							local function __FUNC_FF84_(arg0, arg1)
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
								__FUNC_FF84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF84_)
						end

						if arg1.interrupted then
							__FUNC_FE2F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE2F_)
					end

					if arg1.interrupted then
						__FUNC_FCB4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCB4_)
				end

				if arg1.interrupted then
					__FUNC_FB5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB5F_)
			end

			if arg1.interrupted then
				__FUNC_F9E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9E4_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_F88D_(registerVal8, {})
		local function __FUNC_10139_(arg0, arg1)
			local function __FUNC_10290_(arg0, arg1)
				local function __FUNC_1040B_(arg0, arg1)
					local function __FUNC_10583_(arg0, arg1)
						local function __FUNC_106FB_(arg0, arg1)
							local function __FUNC_10850_(arg0, arg1)
								local function __FUNC_109CB_(arg0, arg1)
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
									__FUNC_109CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109CB_)
							end

							if arg1.interrupted then
								__FUNC_10850_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10850_)
						end

						if arg1.interrupted then
							__FUNC_106FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106FB_)
					end

					if arg1.interrupted then
						__FUNC_10583_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10583_)
				end

				if arg1.interrupted then
					__FUNC_1040B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1040B_)
			end

			if arg1.interrupted then
				__FUNC_10290_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10290_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_10139_(registerVal9, {})
		local function __FUNC_10B7D_(arg0, arg1)
			local function __FUNC_10CD4_(arg0, arg1)
				local function __FUNC_10E4F_(arg0, arg1)
					local function __FUNC_10FA4_(arg0, arg1)
						local function __FUNC_1111F_(arg0, arg1)
							local function __FUNC_11274_(arg0, arg1)
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
								__FUNC_11274_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11274_)
						end

						if arg1.interrupted then
							__FUNC_1111F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1111F_)
					end

					if arg1.interrupted then
						__FUNC_10FA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10FA4_)
				end

				if arg1.interrupted then
					__FUNC_10E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E4F_)
			end

			if arg1.interrupted then
				__FUNC_10CD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CD4_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_10B7D_(registerVal10, {})
		local function __FUNC_11429_(arg0, arg1)
			local function __FUNC_11580_(arg0, arg1)
				local function __FUNC_116FB_(arg0, arg1)
					local function __FUNC_11850_(arg0, arg1)
						local function __FUNC_119CB_(arg0, arg1)
							local function __FUNC_11B20_(arg0, arg1)
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
								__FUNC_11B20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B20_)
						end

						if arg1.interrupted then
							__FUNC_119CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119CB_)
					end

					if arg1.interrupted then
						__FUNC_11850_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11850_)
				end

				if arg1.interrupted then
					__FUNC_116FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116FB_)
			end

			if arg1.interrupted then
				__FUNC_11580_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11580_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_11429_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.GainFocus = __FUNC_E9CB_
	local function __FUNC_11CD5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.430000, 0.090000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.Focus = __FUNC_11CD5_
	local function __FUNC_12086_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_12523_(arg0, arg1)
			local function __FUNC_1269B_(arg0, arg1)
				local function __FUNC_127F0_(arg0, arg1)
					local function __FUNC_1296B_(arg0, arg1)
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
						__FUNC_1296B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1296B_)
				end

				if arg1.interrupted then
					__FUNC_127F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_127F0_)
			end

			if arg1.interrupted then
				__FUNC_1269B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1269B_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_12523_(registerVal7, {})
		local function __FUNC_12B1D_(arg0, arg1)
			local function __FUNC_12C97_(arg0, arg1)
				local function __FUNC_12DEC_(arg0, arg1)
					local function __FUNC_12F67_(arg0, arg1)
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
						__FUNC_12F67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.210000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F67_)
				end

				if arg1.interrupted then
					__FUNC_12DEC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DEC_)
			end

			if arg1.interrupted then
				__FUNC_12C97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C97_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_12B1D_(registerVal8, {})
		local function __FUNC_13119_(arg0, arg1)
			local function __FUNC_13270_(arg0, arg1)
				local function __FUNC_133EB_(arg0, arg1)
					local function __FUNC_13563_(arg0, arg1)
						local function __FUNC_136DB_(arg0, arg1)
							local function __FUNC_13830_(arg0, arg1)
								local function __FUNC_139AB_(arg0, arg1)
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
									__FUNC_139AB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139AB_)
							end

							if arg1.interrupted then
								__FUNC_13830_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13830_)
						end

						if arg1.interrupted then
							__FUNC_136DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136DB_)
					end

					if arg1.interrupted then
						__FUNC_13563_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13563_)
				end

				if arg1.interrupted then
					__FUNC_133EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133EB_)
			end

			if arg1.interrupted then
				__FUNC_13270_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13270_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_13119_(registerVal9, {})
		local function __FUNC_13B5D_(arg0, arg1)
			local function __FUNC_13CB4_(arg0, arg1)
				local function __FUNC_13E2F_(arg0, arg1)
					local function __FUNC_13F84_(arg0, arg1)
						local function __FUNC_140FF_(arg0, arg1)
							local function __FUNC_14254_(arg0, arg1)
								local function __FUNC_143AC_(arg0, arg1)
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
									__FUNC_143AC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_143AC_)
							end

							if arg1.interrupted then
								__FUNC_14254_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14254_)
						end

						if arg1.interrupted then
							__FUNC_140FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140FF_)
					end

					if arg1.interrupted then
						__FUNC_13F84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F84_)
				end

				if arg1.interrupted then
					__FUNC_13E2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E2F_)
			end

			if arg1.interrupted then
				__FUNC_13CB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CB4_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_13B5D_(registerVal10, {})
		local function __FUNC_14561_(arg0, arg1)
			local function __FUNC_146B8_(arg0, arg1)
				local function __FUNC_14833_(arg0, arg1)
					local function __FUNC_14988_(arg0, arg1)
						local function __FUNC_14B03_(arg0, arg1)
							local function __FUNC_14C58_(arg0, arg1)
								local function __FUNC_14DB0_(arg0, arg1)
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
									__FUNC_14DB0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DB0_)
							end

							if arg1.interrupted then
								__FUNC_14C58_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C58_)
						end

						if arg1.interrupted then
							__FUNC_14B03_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B03_)
					end

					if arg1.interrupted then
						__FUNC_14988_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14988_)
				end

				if arg1.interrupted then
					__FUNC_14833_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14833_)
			end

			if arg1.interrupted then
				__FUNC_146B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146B8_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_14561_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.LoseFocus = __FUNC_12086_
	registerVal19.IsEquippedAndHideHintText = registerVal20
	registerVal2.clipsPerState = registerVal19
	registerVal21 = {}
	registerVal22 = {}
	registerVal22.stateName = "IsEquipped"
	local function __FUNC_14F65_(arg0, arg1, arg2)
		return true
	end

	registerVal22.condition = __FUNC_14F65_
	local registerVal23 = {}
	registerVal23.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_14F98_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_14F98_
	registerVal21 = {registerVal22, registerVal23}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_14FE5_(arg0)
		arg0.BoxButtonLrgInactiveStroke:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.plusIcon:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.removeButton:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14FE5_)
	if __FUNC_632_ then
		__FUNC_632_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GunsmithAttachmentButton.new = __FUNC_69F_
