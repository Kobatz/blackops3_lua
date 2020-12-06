-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMainFrameButton = registerVal1
function CoD.GroupsSocialMainFrameButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMainFrameButton)
	registerVal2.id = "GroupsSocialMainFrameButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
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
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive0 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -42.000000, -6.000000)
	registerVal6:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_15A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Groups", "inviteCount", __FUNC_15A4_)
	registerVal2:addElement(registerVal6)
	registerVal2.NumItems = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarT = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal9:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal9:setRGB(1.000000, 0.090000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.glitch = registerVal9
	local registerVal11 = IsPC()
	if registerVal11 then
		registerVal11 = LUI.UIImage.new()
	else
		registerVal11 = LUI.UIElement.createFake()
	end
	registerVal11:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal11:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal11 = IsPC()
	if registerVal11 then
		registerVal2:addElement(registerVal11)
	end
	registerVal2.glitch2 = registerVal11
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal11:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal11:setRGB(1.000000, 0.090000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch0 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 50.000000, 174.000000)
	registerVal12:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal12:setText(Engine.Localize("GROUPS_INVITES"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.Text = registerVal12
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
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 7.000000, 37.000000)
	registerVal15:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal15:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_invites"))
	registerVal2:addElement(registerVal15)
	registerVal2.Icon = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 44.000000, 48.000000)
	registerVal16:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal16:setAlpha(0.300000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.itemImageLine = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_165E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal11:completeAnimation()
		registerVal2.glitch0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.DefaultClip = __FUNC_165E_
	local function __FUNC_1BA3_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1F3C_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(0.400000)
		__FUNC_1F3C_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_20F1_(arg0, arg1)
			local function __FUNC_2248_(arg0, arg1)
				local function __FUNC_23C3_(arg0, arg1)
					local function __FUNC_2518_(arg0, arg1)
						local function __FUNC_2693_(arg0, arg1)
							local function __FUNC_27E8_(arg0, arg1)
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
								__FUNC_27E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E8_)
						end

						if arg1.interrupted then
							__FUNC_2693_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2693_)
					end

					if arg1.interrupted then
						__FUNC_2518_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2518_)
				end

				if arg1.interrupted then
					__FUNC_23C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C3_)
			end

			if arg1.interrupted then
				__FUNC_2248_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2248_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_20F1_(registerVal7, {})
		local function __FUNC_299D_(arg0, arg1)
			local function __FUNC_2AF4_(arg0, arg1)
				local function __FUNC_2C6F_(arg0, arg1)
					local function __FUNC_2DC4_(arg0, arg1)
						local function __FUNC_2F3F_(arg0, arg1)
							local function __FUNC_3094_(arg0, arg1)
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
								__FUNC_3094_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3094_)
						end

						if arg1.interrupted then
							__FUNC_2F3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F3F_)
					end

					if arg1.interrupted then
						__FUNC_2DC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC4_)
				end

				if arg1.interrupted then
					__FUNC_2C6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6F_)
			end

			if arg1.interrupted then
				__FUNC_2AF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF4_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_299D_(registerVal8, {})
		local function __FUNC_3249_(arg0, arg1)
			local function __FUNC_33A0_(arg0, arg1)
				local function __FUNC_351B_(arg0, arg1)
					local function __FUNC_3670_(arg0, arg1)
						local function __FUNC_37EB_(arg0, arg1)
							local function __FUNC_3940_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3940_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3940_)
						end

						if arg1.interrupted then
							__FUNC_37EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37EB_)
					end

					if arg1.interrupted then
						__FUNC_3670_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3670_)
				end

				if arg1.interrupted then
					__FUNC_351B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_351B_)
			end

			if arg1.interrupted then
				__FUNC_33A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33A0_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_3249_(registerVal9, {})
		local function __FUNC_3B7F_(arg0, arg1)
			local function __FUNC_3CD4_(arg0, arg1)
				local function __FUNC_3E4F_(arg0, arg1)
					local function __FUNC_3FA4_(arg0, arg1)
						local function __FUNC_411F_(arg0, arg1)
							local function __FUNC_4274_(arg0, arg1)
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
								__FUNC_4274_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4274_)
						end

						if arg1.interrupted then
							__FUNC_411F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_411F_)
					end

					if arg1.interrupted then
						__FUNC_3FA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FA4_)
				end

				if arg1.interrupted then
					__FUNC_3E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E4F_)
			end

			if arg1.interrupted then
				__FUNC_3CD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CD4_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3B7F_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.GainFocus = __FUNC_1BA3_
	local function __FUNC_4429_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BoxButtonLrgInactive0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.Focus = __FUNC_4429_
	local function __FUNC_4725_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_4A21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive0:setAlpha(1.000000)
		__FUNC_4A21_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_4BD5_(arg0, arg1)
			local function __FUNC_4D4F_(arg0, arg1)
				local function __FUNC_4EC7_(arg0, arg1)
					local function __FUNC_503F_(arg0, arg1)
						local function __FUNC_5194_(arg0, arg1)
							local function __FUNC_530F_(arg0, arg1)
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
								__FUNC_530F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530F_)
						end

						if arg1.interrupted then
							__FUNC_5194_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5194_)
					end

					if arg1.interrupted then
						__FUNC_503F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503F_)
				end

				if arg1.interrupted then
					__FUNC_4EC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EC7_)
			end

			if arg1.interrupted then
				__FUNC_4D4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D4F_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4BD5_(registerVal7, {})
		local function __FUNC_54C1_(arg0, arg1)
			local function __FUNC_563B_(arg0, arg1)
				local function __FUNC_57B3_(arg0, arg1)
					local function __FUNC_592B_(arg0, arg1)
						local function __FUNC_5A80_(arg0, arg1)
							local function __FUNC_5BFB_(arg0, arg1)
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
								__FUNC_5BFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BFB_)
						end

						if arg1.interrupted then
							__FUNC_5A80_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A80_)
					end

					if arg1.interrupted then
						__FUNC_592B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_592B_)
				end

				if arg1.interrupted then
					__FUNC_57B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57B3_)
			end

			if arg1.interrupted then
				__FUNC_563B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_563B_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_54C1_(registerVal8, {})
		local function __FUNC_5DAD_(arg0, arg1)
			local function __FUNC_5F04_(arg0, arg1)
				local function __FUNC_607F_(arg0, arg1)
					local function __FUNC_61D4_(arg0, arg1)
						local function __FUNC_634F_(arg0, arg1)
							local function __FUNC_64A4_(arg0, arg1)
								local function __FUNC_661F_(arg0, arg1)
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
									__FUNC_661F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_661F_)
							end

							if arg1.interrupted then
								__FUNC_64A4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64A4_)
						end

						if arg1.interrupted then
							__FUNC_634F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_634F_)
					end

					if arg1.interrupted then
						__FUNC_61D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61D4_)
				end

				if arg1.interrupted then
					__FUNC_607F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_607F_)
			end

			if arg1.interrupted then
				__FUNC_5F04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F04_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_5DAD_(registerVal9, {})
		local function __FUNC_67D1_(arg0, arg1)
			local function __FUNC_6928_(arg0, arg1)
				local function __FUNC_6AA3_(arg0, arg1)
					local function __FUNC_6BF8_(arg0, arg1)
						local function __FUNC_6D73_(arg0, arg1)
							local function __FUNC_6EC8_(arg0, arg1)
								local function __FUNC_7043_(arg0, arg1)
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
									__FUNC_7043_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7043_)
							end

							if arg1.interrupted then
								__FUNC_6EC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EC8_)
						end

						if arg1.interrupted then
							__FUNC_6D73_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D73_)
					end

					if arg1.interrupted then
						__FUNC_6BF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF8_)
				end

				if arg1.interrupted then
					__FUNC_6AA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AA3_)
			end

			if arg1.interrupted then
				__FUNC_6928_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6928_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_67D1_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal18.LoseFocus = __FUNC_4725_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_71F5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_71F5_
	local function __FUNC_76C4_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_7A58_(arg0, arg1)
			local function __FUNC_7BB0_(arg0, arg1)
				local function __FUNC_7D2B_(arg0, arg1)
					local function __FUNC_7E80_(arg0, arg1)
						local function __FUNC_7FFB_(arg0, arg1)
							local function __FUNC_8150_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_8150_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8150_)
						end

						if arg1.interrupted then
							__FUNC_7FFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FFB_)
					end

					if arg1.interrupted then
						__FUNC_7E80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E80_)
				end

				if arg1.interrupted then
					__FUNC_7D2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D2B_)
			end

			if arg1.interrupted then
				__FUNC_7BB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BB0_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_7A58_(registerVal9, {})
		local function __FUNC_83B8_(arg0, arg1)
			local function __FUNC_8510_(arg0, arg1)
				local function __FUNC_868B_(arg0, arg1)
					local function __FUNC_87E0_(arg0, arg1)
						local function __FUNC_895B_(arg0, arg1)
							local function __FUNC_8AB0_(arg0, arg1)
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
								__FUNC_8AB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AB0_)
						end

						if arg1.interrupted then
							__FUNC_895B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_895B_)
					end

					if arg1.interrupted then
						__FUNC_87E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87E0_)
				end

				if arg1.interrupted then
					__FUNC_868B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868B_)
			end

			if arg1.interrupted then
				__FUNC_8510_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8510_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_83B8_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_8C8E_(arg0, arg1)
			local function __FUNC_8E07_(arg0, arg1)
				local function __FUNC_8F7F_(arg0, arg1)
					local function __FUNC_90F7_(arg0, arg1)
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
						__FUNC_90F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90F7_)
				end

				if arg1.interrupted then
					__FUNC_8F7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F7F_)
			end

			if arg1.interrupted then
				__FUNC_8E07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.560000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E07_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_8C8E_(registerVal13, {})
		local function __FUNC_92A9_(arg0, arg1)
			local function __FUNC_9423_(arg0, arg1)
				local function __FUNC_959B_(arg0, arg1)
					local function __FUNC_9713_(arg0, arg1)
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
						__FUNC_9713_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9713_)
				end

				if arg1.interrupted then
					__FUNC_959B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.210000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_959B_)
			end

			if arg1.interrupted then
				__FUNC_9423_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.560000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9423_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		__FUNC_92A9_(registerVal14, {})
	end

	registerVal18.GainFocus = __FUNC_76C4_
	local function __FUNC_98C5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal18.Focus = __FUNC_98C5_
	local function __FUNC_9AC8_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.NumItems:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_9DC2_(arg0, arg1)
			local function __FUNC_9F18_(arg0, arg1)
				local function __FUNC_A093_(arg0, arg1)
					local function __FUNC_A1E8_(arg0, arg1)
						local function __FUNC_A363_(arg0, arg1)
							local function __FUNC_A4B8_(arg0, arg1)
								local function __FUNC_A633_(arg0, arg1)
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
									__FUNC_A633_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A633_)
							end

							if arg1.interrupted then
								__FUNC_A4B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4B8_)
						end

						if arg1.interrupted then
							__FUNC_A363_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A363_)
					end

					if arg1.interrupted then
						__FUNC_A1E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1E8_)
				end

				if arg1.interrupted then
					__FUNC_A093_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A093_)
			end

			if arg1.interrupted then
				__FUNC_9F18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F18_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_9DC2_(registerVal9, {})
		local function __FUNC_A80E_(arg0, arg1)
			local function __FUNC_A964_(arg0, arg1)
				local function __FUNC_AADF_(arg0, arg1)
					local function __FUNC_AC34_(arg0, arg1)
						local function __FUNC_ADAF_(arg0, arg1)
							local function __FUNC_AF04_(arg0, arg1)
								local function __FUNC_B07F_(arg0, arg1)
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
									__FUNC_B07F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B07F_)
							end

							if arg1.interrupted then
								__FUNC_AF04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF04_)
						end

						if arg1.interrupted then
							__FUNC_ADAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADAF_)
					end

					if arg1.interrupted then
						__FUNC_AC34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC34_)
				end

				if arg1.interrupted then
					__FUNC_AADF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AADF_)
			end

			if arg1.interrupted then
				__FUNC_A964_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A964_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_A80E_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_B25A_(arg0, arg1)
			local function __FUNC_B3D3_(arg0, arg1)
				local function __FUNC_B54B_(arg0, arg1)
					local function __FUNC_B6C3_(arg0, arg1)
						local function __FUNC_B83B_(arg0, arg1)
							local function __FUNC_B9B3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_B9B3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.180000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9B3_)
						end

						if arg1.interrupted then
							__FUNC_B83B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B83B_)
					end

					if arg1.interrupted then
						__FUNC_B6C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6C3_)
				end

				if arg1.interrupted then
					__FUNC_B54B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B54B_)
			end

			if arg1.interrupted then
				__FUNC_B3D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3D3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_B25A_(registerVal13, {})
		local function __FUNC_BB65_(arg0, arg1)
			local function __FUNC_BCDF_(arg0, arg1)
				local function __FUNC_BE57_(arg0, arg1)
					local function __FUNC_BFCF_(arg0, arg1)
						local function __FUNC_C147_(arg0, arg1)
							local function __FUNC_C2BF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C2BF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.180000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2BF_)
						end

						if arg1.interrupted then
							__FUNC_C147_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C147_)
					end

					if arg1.interrupted then
						__FUNC_BFCF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFCF_)
				end

				if arg1.interrupted then
					__FUNC_BE57_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE57_)
			end

			if arg1.interrupted then
				__FUNC_BCDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCDF_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		__FUNC_BB65_(registerVal14, {})
	end

	registerVal18.LoseFocus = __FUNC_9AC8_
	registerVal17.DisableState = registerVal18
	registerVal2.clipsPerState = registerVal17
	local function __FUNC_C471_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive0:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.NumItems:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C471_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

