-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
require("ui.uieditor.widgets.PC.Craft.Gunsmith.GunsmithRemoveButton")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
local function __FUNC_56E_(arg0, arg1)
	local function __FUNC_611_(arg0, arg1)
		arg0:setHandleMouseButton(false)
	end

	arg0:registerEventHandler("disable_mouse_button", __FUNC_611_)
	local function __FUNC_666_(arg0, arg1)
		arg0:setHandleMouseButton(true)
	end

	arg0:registerEventHandler("enable_mouse_button", __FUNC_666_)
end

local function __FUNC_6BA_(arg0, arg1)
	if CoD.isPC then
		__FUNC_56E_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsAttachmentButton = registerVal3
local function __FUNC_727_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsAttachmentButton)
	registerVal2.id = "WeaponBuildKitsAttachmentButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.attachmentImage = registerVal7
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
	local registerVal13 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal13:setTopBottom(false, false, -8.250000, 7.750000)
	registerVal13:setRGB(0.920000, 0.430000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.plusIcon = registerVal13
	local registerVal14 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(1.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusWhiteT = registerVal14
	local registerVal15 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusWhiteB = registerVal15
	local registerVal16 = CoD.GunsmithRemoveButton.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 47.000000, 62.000000)
	registerVal16:setTopBottom(true, false, 2.000000, 17.000000)
	registerVal16:setAlpha(0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.removeButton = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal17:setTopBottom(false, true, -18.500000, -6.500000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cac_iconoptics"))
	registerVal2:addElement(registerVal17)
	registerVal2.opticIndicator = registerVal17
	local registerVal18 = CoD.cac_lock.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -12.500000, 11.500000)
	registerVal18:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.LockIcon = registerVal18
	local registerVal19 = CoD.ItemHintText.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -82.000000, 82.000000)
	registerVal19:setTopBottom(false, true, 17.000000, 47.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19.textCenterAlign:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	registerVal2:addElement(registerVal19)
	registerVal2.itemHintText = registerVal19
	local registerVal20 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal20:setTopBottom(false, true, 4.000000, 14.000000)
	registerVal20:setAlpha(0.000000)
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "NoHintText"
	local function __FUNC_1BDE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal24.condition = __FUNC_1BDE_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	registerVal2:addElement(registerVal20)
	registerVal2.hintArrow = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_1C29_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(0.000000)
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
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_1C29_
	local function __FUNC_22B1_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2705_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2705_(registerVal5, {})
		local function __FUNC_28B9_(arg0, arg1)
			local function __FUNC_2A10_(arg0, arg1)
				local function __FUNC_2B8B_(arg0, arg1)
					local function __FUNC_2CE0_(arg0, arg1)
						local function __FUNC_2E5B_(arg0, arg1)
							local function __FUNC_2FB0_(arg0, arg1)
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
								__FUNC_2FB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB0_)
						end

						if arg1.interrupted then
							__FUNC_2E5B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5B_)
					end

					if arg1.interrupted then
						__FUNC_2CE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE0_)
				end

				if arg1.interrupted then
					__FUNC_2B8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B8B_)
			end

			if arg1.interrupted then
				__FUNC_2A10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A10_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_28B9_(registerVal8, {})
		local function __FUNC_3165_(arg0, arg1)
			local function __FUNC_32BC_(arg0, arg1)
				local function __FUNC_3437_(arg0, arg1)
					local function __FUNC_358C_(arg0, arg1)
						local function __FUNC_3707_(arg0, arg1)
							local function __FUNC_385C_(arg0, arg1)
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
								__FUNC_385C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_385C_)
						end

						if arg1.interrupted then
							__FUNC_3707_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3707_)
					end

					if arg1.interrupted then
						__FUNC_358C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_358C_)
				end

				if arg1.interrupted then
					__FUNC_3437_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3437_)
			end

			if arg1.interrupted then
				__FUNC_32BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32BC_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3165_(registerVal9, {})
		local function __FUNC_3A11_(arg0, arg1)
			local function __FUNC_3B68_(arg0, arg1)
				local function __FUNC_3CE3_(arg0, arg1)
					local function __FUNC_3E5B_(arg0, arg1)
						local function __FUNC_3FD3_(arg0, arg1)
							local function __FUNC_4128_(arg0, arg1)
								local function __FUNC_42A3_(arg0, arg1)
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
									__FUNC_42A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42A3_)
							end

							if arg1.interrupted then
								__FUNC_4128_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4128_)
						end

						if arg1.interrupted then
							__FUNC_3FD3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD3_)
					end

					if arg1.interrupted then
						__FUNC_3E5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E5B_)
				end

				if arg1.interrupted then
					__FUNC_3CE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE3_)
			end

			if arg1.interrupted then
				__FUNC_3B68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B68_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_3A11_(registerVal10, {})
		local function __FUNC_4455_(arg0, arg1)
			local function __FUNC_45AC_(arg0, arg1)
				local function __FUNC_4727_(arg0, arg1)
					local function __FUNC_487C_(arg0, arg1)
						local function __FUNC_49F7_(arg0, arg1)
							local function __FUNC_4B4C_(arg0, arg1)
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
								__FUNC_4B4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B4C_)
						end

						if arg1.interrupted then
							__FUNC_49F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49F7_)
					end

					if arg1.interrupted then
						__FUNC_487C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_487C_)
				end

				if arg1.interrupted then
					__FUNC_4727_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4727_)
			end

			if arg1.interrupted then
				__FUNC_45AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45AC_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4455_(registerVal11, {})
		local function __FUNC_4D01_(arg0, arg1)
			local function __FUNC_4E58_(arg0, arg1)
				local function __FUNC_4FD3_(arg0, arg1)
					local function __FUNC_5128_(arg0, arg1)
						local function __FUNC_52A3_(arg0, arg1)
							local function __FUNC_53F8_(arg0, arg1)
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
								__FUNC_53F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53F8_)
						end

						if arg1.interrupted then
							__FUNC_52A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52A3_)
					end

					if arg1.interrupted then
						__FUNC_5128_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5128_)
				end

				if arg1.interrupted then
					__FUNC_4FD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD3_)
			end

			if arg1.interrupted then
				__FUNC_4E58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E58_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4D01_(registerVal12, {})
		local function __FUNC_55AD_(arg0, arg1)
			local function __FUNC_5727_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.430000, 0.090000)
				arg0:setAlpha(0.450000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5727_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5727_)
		end

		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.430000, 0.090000)
		registerVal2.plusIcon:setAlpha(0.450000)
		__FUNC_55AD_(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.GainFocus = __FUNC_22B1_
	local function __FUNC_590C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.430000, 0.090000)
		registerVal2.plusIcon:setAlpha(0.690000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.Focus = __FUNC_590C_
	local function __FUNC_5CC3_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_60A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_60A4_(registerVal5, {})
		local function __FUNC_6259_(arg0, arg1)
			local function __FUNC_63D3_(arg0, arg1)
				local function __FUNC_654B_(arg0, arg1)
					local function __FUNC_66C3_(arg0, arg1)
						local function __FUNC_6818_(arg0, arg1)
							local function __FUNC_6993_(arg0, arg1)
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
								__FUNC_6993_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6993_)
						end

						if arg1.interrupted then
							__FUNC_6818_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6818_)
					end

					if arg1.interrupted then
						__FUNC_66C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C3_)
				end

				if arg1.interrupted then
					__FUNC_654B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_654B_)
			end

			if arg1.interrupted then
				__FUNC_63D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63D3_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6259_(registerVal8, {})
		local function __FUNC_6B45_(arg0, arg1)
			local function __FUNC_6CBF_(arg0, arg1)
				local function __FUNC_6E37_(arg0, arg1)
					local function __FUNC_6FAF_(arg0, arg1)
						local function __FUNC_7104_(arg0, arg1)
							local function __FUNC_727F_(arg0, arg1)
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
								__FUNC_727F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_727F_)
						end

						if arg1.interrupted then
							__FUNC_7104_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7104_)
					end

					if arg1.interrupted then
						__FUNC_6FAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FAF_)
				end

				if arg1.interrupted then
					__FUNC_6E37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E37_)
			end

			if arg1.interrupted then
				__FUNC_6CBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CBF_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6B45_(registerVal9, {})
		local function __FUNC_7431_(arg0, arg1)
			local function __FUNC_7588_(arg0, arg1)
				local function __FUNC_7703_(arg0, arg1)
					local function __FUNC_787B_(arg0, arg1)
						local function __FUNC_79F3_(arg0, arg1)
							local function __FUNC_7B48_(arg0, arg1)
								local function __FUNC_7CC3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7CC3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CC3_)
							end

							if arg1.interrupted then
								__FUNC_7B48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B48_)
						end

						if arg1.interrupted then
							__FUNC_79F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F3_)
					end

					if arg1.interrupted then
						__FUNC_787B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_787B_)
				end

				if arg1.interrupted then
					__FUNC_7703_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7703_)
			end

			if arg1.interrupted then
				__FUNC_7588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7588_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_7431_(registerVal10, {})
		local function __FUNC_7E75_(arg0, arg1)
			local function __FUNC_7FCC_(arg0, arg1)
				local function __FUNC_8147_(arg0, arg1)
					local function __FUNC_829C_(arg0, arg1)
						local function __FUNC_8417_(arg0, arg1)
							local function __FUNC_856C_(arg0, arg1)
								local function __FUNC_86E7_(arg0, arg1)
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
									__FUNC_86E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86E7_)
							end

							if arg1.interrupted then
								__FUNC_856C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_856C_)
						end

						if arg1.interrupted then
							__FUNC_8417_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8417_)
					end

					if arg1.interrupted then
						__FUNC_829C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_829C_)
				end

				if arg1.interrupted then
					__FUNC_8147_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8147_)
			end

			if arg1.interrupted then
				__FUNC_7FCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FCC_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_7E75_(registerVal11, {})
		local function __FUNC_8899_(arg0, arg1)
			local function __FUNC_89F0_(arg0, arg1)
				local function __FUNC_8B6B_(arg0, arg1)
					local function __FUNC_8CC0_(arg0, arg1)
						local function __FUNC_8E3B_(arg0, arg1)
							local function __FUNC_8F90_(arg0, arg1)
								local function __FUNC_910B_(arg0, arg1)
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
									__FUNC_910B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_910B_)
							end

							if arg1.interrupted then
								__FUNC_8F90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F90_)
						end

						if arg1.interrupted then
							__FUNC_8E3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E3B_)
					end

					if arg1.interrupted then
						__FUNC_8CC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CC0_)
				end

				if arg1.interrupted then
					__FUNC_8B6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B6B_)
			end

			if arg1.interrupted then
				__FUNC_89F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89F0_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_8899_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.LoseFocus = __FUNC_5CC3_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_92BD_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.980000, 0.370000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_92BD_
	local function __FUNC_979B_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_9BD4_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_9BD4_(registerVal5, {})
		local function __FUNC_9D89_(arg0, arg1)
			local function __FUNC_9EE0_(arg0, arg1)
				local function __FUNC_A05B_(arg0, arg1)
					local function __FUNC_A1B0_(arg0, arg1)
						local function __FUNC_A32B_(arg0, arg1)
							local function __FUNC_A480_(arg0, arg1)
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
								__FUNC_A480_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A480_)
						end

						if arg1.interrupted then
							__FUNC_A32B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A32B_)
					end

					if arg1.interrupted then
						__FUNC_A1B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1B0_)
				end

				if arg1.interrupted then
					__FUNC_A05B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A05B_)
			end

			if arg1.interrupted then
				__FUNC_9EE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EE0_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_9D89_(registerVal8, {})
		local function __FUNC_A635_(arg0, arg1)
			local function __FUNC_A78C_(arg0, arg1)
				local function __FUNC_A907_(arg0, arg1)
					local function __FUNC_AA5C_(arg0, arg1)
						local function __FUNC_ABD7_(arg0, arg1)
							local function __FUNC_AD2C_(arg0, arg1)
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
								__FUNC_AD2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD2C_)
						end

						if arg1.interrupted then
							__FUNC_ABD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABD7_)
					end

					if arg1.interrupted then
						__FUNC_AA5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA5C_)
				end

				if arg1.interrupted then
					__FUNC_A907_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A907_)
			end

			if arg1.interrupted then
				__FUNC_A78C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A78C_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_A635_(registerVal9, {})
		local function __FUNC_AEE1_(arg0, arg1)
			local function __FUNC_B038_(arg0, arg1)
				local function __FUNC_B1B3_(arg0, arg1)
					local function __FUNC_B32B_(arg0, arg1)
						local function __FUNC_B4A3_(arg0, arg1)
							local function __FUNC_B5F8_(arg0, arg1)
								local function __FUNC_B773_(arg0, arg1)
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
									__FUNC_B773_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B773_)
							end

							if arg1.interrupted then
								__FUNC_B5F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5F8_)
						end

						if arg1.interrupted then
							__FUNC_B4A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4A3_)
					end

					if arg1.interrupted then
						__FUNC_B32B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B32B_)
				end

				if arg1.interrupted then
					__FUNC_B1B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1B3_)
			end

			if arg1.interrupted then
				__FUNC_B038_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B038_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_AEE1_(registerVal10, {})
		local function __FUNC_B925_(arg0, arg1)
			local function __FUNC_BA7C_(arg0, arg1)
				local function __FUNC_BBF7_(arg0, arg1)
					local function __FUNC_BD4C_(arg0, arg1)
						local function __FUNC_BEC7_(arg0, arg1)
							local function __FUNC_C01C_(arg0, arg1)
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
								__FUNC_C01C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C01C_)
						end

						if arg1.interrupted then
							__FUNC_BEC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEC7_)
					end

					if arg1.interrupted then
						__FUNC_BD4C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD4C_)
				end

				if arg1.interrupted then
					__FUNC_BBF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBF7_)
			end

			if arg1.interrupted then
				__FUNC_BA7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA7C_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_B925_(registerVal11, {})
		local function __FUNC_C1D1_(arg0, arg1)
			local function __FUNC_C328_(arg0, arg1)
				local function __FUNC_C4A3_(arg0, arg1)
					local function __FUNC_C5F8_(arg0, arg1)
						local function __FUNC_C773_(arg0, arg1)
							local function __FUNC_C8C8_(arg0, arg1)
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
								__FUNC_C8C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8C8_)
						end

						if arg1.interrupted then
							__FUNC_C773_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C773_)
					end

					if arg1.interrupted then
						__FUNC_C5F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5F8_)
				end

				if arg1.interrupted then
					__FUNC_C4A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4A3_)
			end

			if arg1.interrupted then
				__FUNC_C328_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C328_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_C1D1_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.380000, 0.060000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_CA7D_(arg0, arg1)
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

		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		__FUNC_CA7D_(registerVal16, {})
		local function __FUNC_CC31_(arg0, arg1)
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

		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		__FUNC_CC31_(registerVal19, {})
		local function __FUNC_CDE5_(arg0, arg1)
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

		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_CDE5_(registerVal20, {})
	end

	registerVal22.GainFocus = __FUNC_979B_
	local function __FUNC_CF99_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.930000, 0.400000, 0.080000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_D3B5_(arg0, arg1)
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

		registerVal19:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
		registerVal19:setAlpha(0.900000)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_D3B5_)
		local function __FUNC_D569_(arg0, arg1)
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

		registerVal20:beginAnimation("keyframe", 1320.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(0.900000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_D569_)
	end

	registerVal22.Focus = __FUNC_CF99_
	local function __FUNC_D71D_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_DB60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_DB60_(registerVal5, {})
		local function __FUNC_DD15_(arg0, arg1)
			local function __FUNC_DE8F_(arg0, arg1)
				local function __FUNC_E007_(arg0, arg1)
					local function __FUNC_E17F_(arg0, arg1)
						local function __FUNC_E2D4_(arg0, arg1)
							local function __FUNC_E44F_(arg0, arg1)
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
								__FUNC_E44F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E44F_)
						end

						if arg1.interrupted then
							__FUNC_E2D4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2D4_)
					end

					if arg1.interrupted then
						__FUNC_E17F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E17F_)
				end

				if arg1.interrupted then
					__FUNC_E007_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E007_)
			end

			if arg1.interrupted then
				__FUNC_DE8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE8F_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_DD15_(registerVal8, {})
		local function __FUNC_E601_(arg0, arg1)
			local function __FUNC_E77B_(arg0, arg1)
				local function __FUNC_E8F3_(arg0, arg1)
					local function __FUNC_EA6B_(arg0, arg1)
						local function __FUNC_EBC0_(arg0, arg1)
							local function __FUNC_ED3B_(arg0, arg1)
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
								__FUNC_ED3B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED3B_)
						end

						if arg1.interrupted then
							__FUNC_EBC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBC0_)
					end

					if arg1.interrupted then
						__FUNC_EA6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA6B_)
				end

				if arg1.interrupted then
					__FUNC_E8F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8F3_)
			end

			if arg1.interrupted then
				__FUNC_E77B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E77B_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_E601_(registerVal9, {})
		local function __FUNC_EEED_(arg0, arg1)
			local function __FUNC_F044_(arg0, arg1)
				local function __FUNC_F1BF_(arg0, arg1)
					local function __FUNC_F337_(arg0, arg1)
						local function __FUNC_F4AF_(arg0, arg1)
							local function __FUNC_F604_(arg0, arg1)
								local function __FUNC_F77F_(arg0, arg1)
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
									__FUNC_F77F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F77F_)
							end

							if arg1.interrupted then
								__FUNC_F604_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F604_)
						end

						if arg1.interrupted then
							__FUNC_F4AF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4AF_)
					end

					if arg1.interrupted then
						__FUNC_F337_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F337_)
				end

				if arg1.interrupted then
					__FUNC_F1BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1BF_)
			end

			if arg1.interrupted then
				__FUNC_F044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F044_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_EEED_(registerVal10, {})
		local function __FUNC_F931_(arg0, arg1)
			local function __FUNC_FA88_(arg0, arg1)
				local function __FUNC_FC03_(arg0, arg1)
					local function __FUNC_FD58_(arg0, arg1)
						local function __FUNC_FED3_(arg0, arg1)
							local function __FUNC_10028_(arg0, arg1)
								local function __FUNC_101A3_(arg0, arg1)
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
									__FUNC_101A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101A3_)
							end

							if arg1.interrupted then
								__FUNC_10028_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10028_)
						end

						if arg1.interrupted then
							__FUNC_FED3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FED3_)
					end

					if arg1.interrupted then
						__FUNC_FD58_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD58_)
				end

				if arg1.interrupted then
					__FUNC_FC03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC03_)
			end

			if arg1.interrupted then
				__FUNC_FA88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA88_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_F931_(registerVal11, {})
		local function __FUNC_10355_(arg0, arg1)
			local function __FUNC_104AC_(arg0, arg1)
				local function __FUNC_10627_(arg0, arg1)
					local function __FUNC_1077C_(arg0, arg1)
						local function __FUNC_108F7_(arg0, arg1)
							local function __FUNC_10A4C_(arg0, arg1)
								local function __FUNC_10BC7_(arg0, arg1)
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
									__FUNC_10BC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BC7_)
							end

							if arg1.interrupted then
								__FUNC_10A4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A4C_)
						end

						if arg1.interrupted then
							__FUNC_108F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108F7_)
					end

					if arg1.interrupted then
						__FUNC_1077C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1077C_)
				end

				if arg1.interrupted then
					__FUNC_10627_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10627_)
			end

			if arg1.interrupted then
				__FUNC_104AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104AC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10355_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.920000, 0.430000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_10D79_(arg0, arg1)
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

		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		__FUNC_10D79_(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.LoseFocus = __FUNC_D71D_
	registerVal21.IsEquipped = registerVal22
	registerVal22 = {}
	local function __FUNC_10F2D_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(0.000000)
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
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.LockIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.DefaultClip = __FUNC_10F2D_
	registerVal21.Locked = registerVal22
	registerVal22 = {}
	local function __FUNC_114A2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.980000, 0.370000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.LockIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal22.DefaultClip = __FUNC_114A2_
	local function __FUNC_118CE_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_11C5F_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_11C5F_(registerVal5, {})
		local function __FUNC_11E11_(arg0, arg1)
			local function __FUNC_11F68_(arg0, arg1)
				local function __FUNC_120E3_(arg0, arg1)
					local function __FUNC_12238_(arg0, arg1)
						local function __FUNC_123B3_(arg0, arg1)
							local function __FUNC_12508_(arg0, arg1)
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
								__FUNC_12508_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12508_)
						end

						if arg1.interrupted then
							__FUNC_123B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123B3_)
					end

					if arg1.interrupted then
						__FUNC_12238_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12238_)
				end

				if arg1.interrupted then
					__FUNC_120E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120E3_)
			end

			if arg1.interrupted then
				__FUNC_11F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F68_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_11E11_(registerVal8, {})
		local function __FUNC_126BD_(arg0, arg1)
			local function __FUNC_12814_(arg0, arg1)
				local function __FUNC_1298F_(arg0, arg1)
					local function __FUNC_12AE4_(arg0, arg1)
						local function __FUNC_12C5F_(arg0, arg1)
							local function __FUNC_12DB4_(arg0, arg1)
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
								__FUNC_12DB4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DB4_)
						end

						if arg1.interrupted then
							__FUNC_12C5F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C5F_)
					end

					if arg1.interrupted then
						__FUNC_12AE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12AE4_)
				end

				if arg1.interrupted then
					__FUNC_1298F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1298F_)
			end

			if arg1.interrupted then
				__FUNC_12814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12814_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_126BD_(registerVal9, {})
		local function __FUNC_12F69_(arg0, arg1)
			local function __FUNC_130C0_(arg0, arg1)
				local function __FUNC_1323B_(arg0, arg1)
					local function __FUNC_133B3_(arg0, arg1)
						local function __FUNC_1352B_(arg0, arg1)
							local function __FUNC_13680_(arg0, arg1)
								local function __FUNC_137FB_(arg0, arg1)
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
									__FUNC_137FB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137FB_)
							end

							if arg1.interrupted then
								__FUNC_13680_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13680_)
						end

						if arg1.interrupted then
							__FUNC_1352B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1352B_)
					end

					if arg1.interrupted then
						__FUNC_133B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133B3_)
				end

				if arg1.interrupted then
					__FUNC_1323B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1323B_)
			end

			if arg1.interrupted then
				__FUNC_130C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130C0_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_12F69_(registerVal10, {})
		local function __FUNC_139AD_(arg0, arg1)
			local function __FUNC_13B04_(arg0, arg1)
				local function __FUNC_13C7F_(arg0, arg1)
					local function __FUNC_13DD4_(arg0, arg1)
						local function __FUNC_13F4F_(arg0, arg1)
							local function __FUNC_140A4_(arg0, arg1)
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
								__FUNC_140A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140A4_)
						end

						if arg1.interrupted then
							__FUNC_13F4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F4F_)
					end

					if arg1.interrupted then
						__FUNC_13DD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13DD4_)
				end

				if arg1.interrupted then
					__FUNC_13C7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C7F_)
			end

			if arg1.interrupted then
				__FUNC_13B04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B04_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_139AD_(registerVal11, {})
		local function __FUNC_14259_(arg0, arg1)
			local function __FUNC_143B0_(arg0, arg1)
				local function __FUNC_1452B_(arg0, arg1)
					local function __FUNC_14680_(arg0, arg1)
						local function __FUNC_147FB_(arg0, arg1)
							local function __FUNC_14950_(arg0, arg1)
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
								__FUNC_14950_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14950_)
						end

						if arg1.interrupted then
							__FUNC_147FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147FB_)
					end

					if arg1.interrupted then
						__FUNC_14680_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14680_)
				end

				if arg1.interrupted then
					__FUNC_1452B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1452B_)
			end

			if arg1.interrupted then
				__FUNC_143B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_143B0_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_14259_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(1.000000, 0.380000, 0.060000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_14B05_(arg0, arg1)
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

		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		__FUNC_14B05_(registerVal16, {})
	end

	registerVal22.GainFocus = __FUNC_118CE_
	local function __FUNC_14CB9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal7:completeAnimation()
		registerVal2.attachmentImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.930000, 0.400000, 0.080000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal22.Focus = __FUNC_14CB9_
	local function __FUNC_14F65_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_152F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_152F7_(registerVal5, {})
		local function __FUNC_154A9_(arg0, arg1)
			local function __FUNC_15623_(arg0, arg1)
				local function __FUNC_1579B_(arg0, arg1)
					local function __FUNC_15913_(arg0, arg1)
						local function __FUNC_15A68_(arg0, arg1)
							local function __FUNC_15BE3_(arg0, arg1)
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
								__FUNC_15BE3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BE3_)
						end

						if arg1.interrupted then
							__FUNC_15A68_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A68_)
					end

					if arg1.interrupted then
						__FUNC_15913_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15913_)
				end

				if arg1.interrupted then
					__FUNC_1579B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1579B_)
			end

			if arg1.interrupted then
				__FUNC_15623_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15623_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_154A9_(registerVal8, {})
		local function __FUNC_15D95_(arg0, arg1)
			local function __FUNC_15F0F_(arg0, arg1)
				local function __FUNC_16087_(arg0, arg1)
					local function __FUNC_161FF_(arg0, arg1)
						local function __FUNC_16354_(arg0, arg1)
							local function __FUNC_164CF_(arg0, arg1)
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
								__FUNC_164CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164CF_)
						end

						if arg1.interrupted then
							__FUNC_16354_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16354_)
					end

					if arg1.interrupted then
						__FUNC_161FF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_161FF_)
				end

				if arg1.interrupted then
					__FUNC_16087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16087_)
			end

			if arg1.interrupted then
				__FUNC_15F0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F0F_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_15D95_(registerVal9, {})
		local function __FUNC_16681_(arg0, arg1)
			local function __FUNC_167D8_(arg0, arg1)
				local function __FUNC_16953_(arg0, arg1)
					local function __FUNC_16ACB_(arg0, arg1)
						local function __FUNC_16C43_(arg0, arg1)
							local function __FUNC_16D98_(arg0, arg1)
								local function __FUNC_16F13_(arg0, arg1)
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
									__FUNC_16F13_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F13_)
							end

							if arg1.interrupted then
								__FUNC_16D98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D98_)
						end

						if arg1.interrupted then
							__FUNC_16C43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C43_)
					end

					if arg1.interrupted then
						__FUNC_16ACB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16ACB_)
				end

				if arg1.interrupted then
					__FUNC_16953_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16953_)
			end

			if arg1.interrupted then
				__FUNC_167D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167D8_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_16681_(registerVal10, {})
		local function __FUNC_170C5_(arg0, arg1)
			local function __FUNC_1721C_(arg0, arg1)
				local function __FUNC_17397_(arg0, arg1)
					local function __FUNC_174EC_(arg0, arg1)
						local function __FUNC_17667_(arg0, arg1)
							local function __FUNC_177BC_(arg0, arg1)
								local function __FUNC_17937_(arg0, arg1)
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
									__FUNC_17937_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17937_)
							end

							if arg1.interrupted then
								__FUNC_177BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177BC_)
						end

						if arg1.interrupted then
							__FUNC_17667_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17667_)
					end

					if arg1.interrupted then
						__FUNC_174EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174EC_)
				end

				if arg1.interrupted then
					__FUNC_17397_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17397_)
			end

			if arg1.interrupted then
				__FUNC_1721C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1721C_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_170C5_(registerVal11, {})
		local function __FUNC_17AE9_(arg0, arg1)
			local function __FUNC_17C40_(arg0, arg1)
				local function __FUNC_17DBB_(arg0, arg1)
					local function __FUNC_17F10_(arg0, arg1)
						local function __FUNC_1808B_(arg0, arg1)
							local function __FUNC_181E0_(arg0, arg1)
								local function __FUNC_1835B_(arg0, arg1)
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
									__FUNC_1835B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1835B_)
							end

							if arg1.interrupted then
								__FUNC_181E0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_181E0_)
						end

						if arg1.interrupted then
							__FUNC_1808B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1808B_)
					end

					if arg1.interrupted then
						__FUNC_17F10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F10_)
				end

				if arg1.interrupted then
					__FUNC_17DBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17DBB_)
			end

			if arg1.interrupted then
				__FUNC_17C40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C40_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_17AE9_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.plusIcon:setRGB(0.920000, 0.430000, 0.000000)
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_1850D_(arg0, arg1)
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

		registerVal16:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		__FUNC_1850D_(registerVal16, {})
	end

	registerVal22.LoseFocus = __FUNC_14F65_
	registerVal21.IsEquippedNoHintText = registerVal22
	registerVal2.clipsPerState = registerVal21
	local function __FUNC_186C1_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
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
		arg0.LockIcon:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_186C1_)
	if __FUNC_6BA_ then
		__FUNC_6BA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WeaponBuildKitsAttachmentButton.new = __FUNC_727_
