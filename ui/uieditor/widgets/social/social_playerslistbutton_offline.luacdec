-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersListButton_Offline = registerVal1
function CoD.Social_PlayersListButton_Offline.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersListButton_Offline)
	registerVal2.id = "Social_PlayersListButton_Offline"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 99.470000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 59.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.Socialbackground00 = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal4:setTopBottom(true, false, 0.250000, 60.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Socialbackground000 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal5:setTopBottom(true, true, 0.250000, -0.250000)
	local function __FUNC_10C0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "xuid", true, __FUNC_10C0_)
	registerVal2:addElement(registerVal5)
	registerVal2.emblem = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 112.000000, 342.000000)
	registerVal6:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_1164_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "gamertag", true, __FUNC_1164_)
	registerVal2:addElement(registerVal6)
	registerVal2.Label0 = registerVal6
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
	local registerVal9 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal9:setRGB(1.000000, 0.300000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBorder = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal10:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal10:setRGB(1.000000, 0.090000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.glitch = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal11:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal12:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal12:setAlpha(0.150000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal12)
	registerVal2.pixel = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -5.000000, 3.500000)
	registerVal13:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal13:setAlpha(0.150000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal13)
	registerVal2.pixel0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal14:setTopBottom(true, false, -4.000000, 4.500000)
	registerVal14:setAlpha(0.150000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal14)
	registerVal2.pixel1 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -378.250000, -369.750000)
	registerVal15:setTopBottom(false, true, -4.500000, 4.000000)
	registerVal15:setAlpha(0.150000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_social_pixel"))
	registerVal2:addElement(registerVal15)
	registerVal2.pixel00 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_121E_()
		registerVal2:setupElementClipCounter(5.000000)
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
	end

	registerVal17.DefaultClip = __FUNC_121E_
	local function __FUNC_1476_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_16A9_(arg0, arg1)
			local function __FUNC_1800_(arg0, arg1)
				local function __FUNC_197B_(arg0, arg1)
					local function __FUNC_1AD0_(arg0, arg1)
						local function __FUNC_1C4B_(arg0, arg1)
							local function __FUNC_1DA0_(arg0, arg1)
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
								__FUNC_1DA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA0_)
						end

						if arg1.interrupted then
							__FUNC_1C4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C4B_)
					end

					if arg1.interrupted then
						__FUNC_1AD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD0_)
				end

				if arg1.interrupted then
					__FUNC_197B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197B_)
			end

			if arg1.interrupted then
				__FUNC_1800_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1800_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_16A9_(registerVal7, {})
		local function __FUNC_1F55_(arg0, arg1)
			local function __FUNC_20AC_(arg0, arg1)
				local function __FUNC_2227_(arg0, arg1)
					local function __FUNC_237C_(arg0, arg1)
						local function __FUNC_24F7_(arg0, arg1)
							local function __FUNC_264C_(arg0, arg1)
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
								__FUNC_264C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264C_)
						end

						if arg1.interrupted then
							__FUNC_24F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F7_)
					end

					if arg1.interrupted then
						__FUNC_237C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237C_)
				end

				if arg1.interrupted then
					__FUNC_2227_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2227_)
			end

			if arg1.interrupted then
				__FUNC_20AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AC_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1F55_(registerVal8, {})
		local function __FUNC_2801_(arg0, arg1)
			local function __FUNC_2958_(arg0, arg1)
				local function __FUNC_2AD3_(arg0, arg1)
					local function __FUNC_2C4B_(arg0, arg1)
						local function __FUNC_2DC3_(arg0, arg1)
							local function __FUNC_2F18_(arg0, arg1)
								local function __FUNC_3093_(arg0, arg1)
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
									__FUNC_3093_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3093_)
							end

							if arg1.interrupted then
								__FUNC_2F18_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F18_)
						end

						if arg1.interrupted then
							__FUNC_2DC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DC3_)
					end

					if arg1.interrupted then
						__FUNC_2C4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C4B_)
				end

				if arg1.interrupted then
					__FUNC_2AD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD3_)
			end

			if arg1.interrupted then
				__FUNC_2958_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2958_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2801_(registerVal9, {})
		local function __FUNC_3245_(arg0, arg1)
			local function __FUNC_339C_(arg0, arg1)
				local function __FUNC_3517_(arg0, arg1)
					local function __FUNC_366C_(arg0, arg1)
						local function __FUNC_37E7_(arg0, arg1)
							local function __FUNC_393C_(arg0, arg1)
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
								__FUNC_393C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_393C_)
						end

						if arg1.interrupted then
							__FUNC_37E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E7_)
					end

					if arg1.interrupted then
						__FUNC_366C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_366C_)
				end

				if arg1.interrupted then
					__FUNC_3517_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3517_)
			end

			if arg1.interrupted then
				__FUNC_339C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_339C_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3245_(registerVal10, {})
		local function __FUNC_3AF1_(arg0, arg1)
			local function __FUNC_3C48_(arg0, arg1)
				local function __FUNC_3DC3_(arg0, arg1)
					local function __FUNC_3F18_(arg0, arg1)
						local function __FUNC_4093_(arg0, arg1)
							local function __FUNC_41E8_(arg0, arg1)
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
								__FUNC_41E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41E8_)
						end

						if arg1.interrupted then
							__FUNC_4093_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4093_)
					end

					if arg1.interrupted then
						__FUNC_3F18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F18_)
				end

				if arg1.interrupted then
					__FUNC_3DC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC3_)
			end

			if arg1.interrupted then
				__FUNC_3C48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C48_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_3AF1_(registerVal11, {})
	end

	registerVal17.GainFocus = __FUNC_1476_
	local function __FUNC_439D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal17.Focus = __FUNC_439D_
	local function __FUNC_44F4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4729_(arg0, arg1)
			local function __FUNC_48A3_(arg0, arg1)
				local function __FUNC_4A1B_(arg0, arg1)
					local function __FUNC_4B93_(arg0, arg1)
						local function __FUNC_4CE8_(arg0, arg1)
							local function __FUNC_4E63_(arg0, arg1)
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
								__FUNC_4E63_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E63_)
						end

						if arg1.interrupted then
							__FUNC_4CE8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CE8_)
					end

					if arg1.interrupted then
						__FUNC_4B93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B93_)
				end

				if arg1.interrupted then
					__FUNC_4A1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A1B_)
			end

			if arg1.interrupted then
				__FUNC_48A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A3_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_4729_(registerVal7, {})
		local function __FUNC_5015_(arg0, arg1)
			local function __FUNC_518F_(arg0, arg1)
				local function __FUNC_5307_(arg0, arg1)
					local function __FUNC_547F_(arg0, arg1)
						local function __FUNC_55D4_(arg0, arg1)
							local function __FUNC_574F_(arg0, arg1)
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
								__FUNC_574F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_574F_)
						end

						if arg1.interrupted then
							__FUNC_55D4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55D4_)
					end

					if arg1.interrupted then
						__FUNC_547F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_547F_)
				end

				if arg1.interrupted then
					__FUNC_5307_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5307_)
			end

			if arg1.interrupted then
				__FUNC_518F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_518F_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_5015_(registerVal8, {})
		local function __FUNC_5901_(arg0, arg1)
			local function __FUNC_5A58_(arg0, arg1)
				local function __FUNC_5BD3_(arg0, arg1)
					local function __FUNC_5D4B_(arg0, arg1)
						local function __FUNC_5EC3_(arg0, arg1)
							local function __FUNC_6018_(arg0, arg1)
								local function __FUNC_6193_(arg0, arg1)
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
									__FUNC_6193_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6193_)
							end

							if arg1.interrupted then
								__FUNC_6018_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6018_)
						end

						if arg1.interrupted then
							__FUNC_5EC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EC3_)
					end

					if arg1.interrupted then
						__FUNC_5D4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D4B_)
				end

				if arg1.interrupted then
					__FUNC_5BD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BD3_)
			end

			if arg1.interrupted then
				__FUNC_5A58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A58_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_5901_(registerVal9, {})
		local function __FUNC_6345_(arg0, arg1)
			local function __FUNC_649C_(arg0, arg1)
				local function __FUNC_6617_(arg0, arg1)
					local function __FUNC_676C_(arg0, arg1)
						local function __FUNC_68E7_(arg0, arg1)
							local function __FUNC_6A3C_(arg0, arg1)
								local function __FUNC_6BB7_(arg0, arg1)
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
									__FUNC_6BB7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BB7_)
							end

							if arg1.interrupted then
								__FUNC_6A3C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A3C_)
						end

						if arg1.interrupted then
							__FUNC_68E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68E7_)
					end

					if arg1.interrupted then
						__FUNC_676C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_676C_)
				end

				if arg1.interrupted then
					__FUNC_6617_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6617_)
			end

			if arg1.interrupted then
				__FUNC_649C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_649C_)
		end

		registerVal10:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6345_(registerVal10, {})
		local function __FUNC_6D69_(arg0, arg1)
			local function __FUNC_6EC0_(arg0, arg1)
				local function __FUNC_703B_(arg0, arg1)
					local function __FUNC_7190_(arg0, arg1)
						local function __FUNC_730B_(arg0, arg1)
							local function __FUNC_7460_(arg0, arg1)
								local function __FUNC_75DB_(arg0, arg1)
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
									__FUNC_75DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75DB_)
							end

							if arg1.interrupted then
								__FUNC_7460_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7460_)
						end

						if arg1.interrupted then
							__FUNC_730B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_730B_)
					end

					if arg1.interrupted then
						__FUNC_7190_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7190_)
				end

				if arg1.interrupted then
					__FUNC_703B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_703B_)
			end

			if arg1.interrupted then
				__FUNC_6EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EC0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_6D69_(registerVal11, {})
	end

	registerVal17.LoseFocus = __FUNC_44F4_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_778D_(arg0)
		arg0.Socialbackground00:close()
		arg0.Socialbackground000:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.emblem:close()
		arg0.Label0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_778D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

