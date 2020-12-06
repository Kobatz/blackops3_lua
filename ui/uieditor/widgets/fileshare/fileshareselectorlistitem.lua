-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectorListItem = registerVal1
function CoD.FileshareSelectorListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectorListItem)
	registerVal2.id = "FileshareSelectorListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
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
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageSolid = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 65.000000, 69.000000)
	registerVal7:setTopBottom(false, false, -33.000000, 34.000000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.itemImageLine = registerVal7
	local registerVal8 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 82.000000, 265.000000)
	registerVal8:setTopBottom(false, false, -9.500000, 10.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.LabelButton0 = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal10:setRGB(1.000000, 0.300000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBorder = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal11:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal11:setRGB(1.000000, 0.090000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal12:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal12:setRGB(1.000000, 0.150000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch2 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal13:setTopBottom(true, false, 1.000000, 65.000000)
	local function __FUNC_1890_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "renderFileId", true, __FUNC_1890_)
	registerVal2:addElement(registerVal13)
	registerVal2.WCFileshareIconExtraCamRender0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal14:setTopBottom(true, false, 1.000000, 65.000000)
	registerVal14:setAlpha(0.000000)
	local function __FUNC_1973_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_1973_)
	registerVal2:addElement(registerVal14)
	registerVal2.GameTypeImage = registerVal14
	local registerVal15 = LUI.UIElement.new()
	registerVal15:setLeftRight(true, false, 0.000000, 66.000000)
	registerVal15:setTopBottom(true, false, 13.690000, 50.810000)
	registerVal15:setAlpha(0.000000)
	local function __FUNC_1A24_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "fileId", true, __FUNC_1A24_)
	registerVal2:addElement(registerVal15)
	registerVal2.ImageViewer = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = LUI.UITightText.new()
	registerVal17:setLeftRight(true, false, 242.000000, 276.000000)
	registerVal17:setTopBottom(true, false, 24.750000, 39.750000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal17)
	registerVal2.FileSlotLabel = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 8.500000, 56.500000)
	registerVal18:setTopBottom(true, false, 8.250000, 56.250000)
	local function __FUNC_1B11_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal2, "plusImageSrc", true, __FUNC_1B11_)
	registerVal2:addElement(registerVal18)
	registerVal2.PlusImage = registerVal18
	local function __FUNC_1BC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(registerVal1)
		end
	end

	registerVal2.LabelButton0:linkToElementModel(registerVal2, "fileName", true, __FUNC_1BC4_)
	local function __FUNC_1C76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.FileSlotLabel:linkToElementModel(registerVal2, "fileSlot", true, __FUNC_1C76_)
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1D2E_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
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
		registerVal2.WCFileshareIconExtraCamRender0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.PlusImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1D2E_
	local function __FUNC_2164_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_23F7_(arg0, arg1)
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
		__FUNC_23F7_(registerVal4, {})
		local function __FUNC_25A9_(arg0, arg1)
			local function __FUNC_2700_(arg0, arg1)
				local function __FUNC_287B_(arg0, arg1)
					local function __FUNC_29D0_(arg0, arg1)
						local function __FUNC_2B4B_(arg0, arg1)
							local function __FUNC_2CA0_(arg0, arg1)
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
								__FUNC_2CA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CA0_)
						end

						if arg1.interrupted then
							__FUNC_2B4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4B_)
					end

					if arg1.interrupted then
						__FUNC_29D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D0_)
				end

				if arg1.interrupted then
					__FUNC_287B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_287B_)
			end

			if arg1.interrupted then
				__FUNC_2700_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2700_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_25A9_(registerVal9, {})
		local function __FUNC_2E55_(arg0, arg1)
			local function __FUNC_2FAC_(arg0, arg1)
				local function __FUNC_3127_(arg0, arg1)
					local function __FUNC_329F_(arg0, arg1)
						local function __FUNC_3417_(arg0, arg1)
							local function __FUNC_356C_(arg0, arg1)
								local function __FUNC_36E7_(arg0, arg1)
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
									__FUNC_36E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36E7_)
							end

							if arg1.interrupted then
								__FUNC_356C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_356C_)
						end

						if arg1.interrupted then
							__FUNC_3417_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3417_)
					end

					if arg1.interrupted then
						__FUNC_329F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_329F_)
				end

				if arg1.interrupted then
					__FUNC_3127_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3127_)
			end

			if arg1.interrupted then
				__FUNC_2FAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FAC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2E55_(registerVal10, {})
		local function __FUNC_3899_(arg0, arg1)
			local function __FUNC_39F0_(arg0, arg1)
				local function __FUNC_3B6B_(arg0, arg1)
					local function __FUNC_3CC0_(arg0, arg1)
						local function __FUNC_3E3B_(arg0, arg1)
							local function __FUNC_3F90_(arg0, arg1)
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
								__FUNC_3F90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F90_)
						end

						if arg1.interrupted then
							__FUNC_3E3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E3B_)
					end

					if arg1.interrupted then
						__FUNC_3CC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CC0_)
				end

				if arg1.interrupted then
					__FUNC_3B6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B6B_)
			end

			if arg1.interrupted then
				__FUNC_39F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_3899_(registerVal11, {})
		local function __FUNC_4145_(arg0, arg1)
			local function __FUNC_429C_(arg0, arg1)
				local function __FUNC_4417_(arg0, arg1)
					local function __FUNC_456C_(arg0, arg1)
						local function __FUNC_46E7_(arg0, arg1)
							local function __FUNC_483C_(arg0, arg1)
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
								__FUNC_483C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_483C_)
						end

						if arg1.interrupted then
							__FUNC_46E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46E7_)
					end

					if arg1.interrupted then
						__FUNC_456C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_456C_)
				end

				if arg1.interrupted then
					__FUNC_4417_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4417_)
			end

			if arg1.interrupted then
				__FUNC_429C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_429C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_4145_(registerVal12, {})
		local function __FUNC_49F1_(arg0, arg1)
			local function __FUNC_4B48_(arg0, arg1)
				local function __FUNC_4CC3_(arg0, arg1)
					local function __FUNC_4E18_(arg0, arg1)
						local function __FUNC_4F93_(arg0, arg1)
							local function __FUNC_50E8_(arg0, arg1)
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
								__FUNC_50E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50E8_)
						end

						if arg1.interrupted then
							__FUNC_4F93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F93_)
					end

					if arg1.interrupted then
						__FUNC_4E18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E18_)
				end

				if arg1.interrupted then
					__FUNC_4CC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CC3_)
			end

			if arg1.interrupted then
				__FUNC_4B48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B48_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_49F1_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_2164_
	local function __FUNC_529D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_529D_
	local function __FUNC_5456_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_56E7_(arg0, arg1)
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
		__FUNC_56E7_(registerVal4, {})
		local function __FUNC_5899_(arg0, arg1)
			local function __FUNC_5A13_(arg0, arg1)
				local function __FUNC_5B8B_(arg0, arg1)
					local function __FUNC_5D03_(arg0, arg1)
						local function __FUNC_5E58_(arg0, arg1)
							local function __FUNC_5FD3_(arg0, arg1)
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
								__FUNC_5FD3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FD3_)
						end

						if arg1.interrupted then
							__FUNC_5E58_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E58_)
					end

					if arg1.interrupted then
						__FUNC_5D03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D03_)
				end

				if arg1.interrupted then
					__FUNC_5B8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B8B_)
			end

			if arg1.interrupted then
				__FUNC_5A13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A13_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_5899_(registerVal9, {})
		local function __FUNC_6185_(arg0, arg1)
			local function __FUNC_62DC_(arg0, arg1)
				local function __FUNC_6457_(arg0, arg1)
					local function __FUNC_65CF_(arg0, arg1)
						local function __FUNC_6747_(arg0, arg1)
							local function __FUNC_689C_(arg0, arg1)
								local function __FUNC_6A17_(arg0, arg1)
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
									__FUNC_6A17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A17_)
							end

							if arg1.interrupted then
								__FUNC_689C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_689C_)
						end

						if arg1.interrupted then
							__FUNC_6747_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6747_)
					end

					if arg1.interrupted then
						__FUNC_65CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CF_)
				end

				if arg1.interrupted then
					__FUNC_6457_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6457_)
			end

			if arg1.interrupted then
				__FUNC_62DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62DC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_6185_(registerVal10, {})
		local function __FUNC_6BC9_(arg0, arg1)
			local function __FUNC_6D20_(arg0, arg1)
				local function __FUNC_6E9B_(arg0, arg1)
					local function __FUNC_6FF0_(arg0, arg1)
						local function __FUNC_716B_(arg0, arg1)
							local function __FUNC_72C0_(arg0, arg1)
								local function __FUNC_743B_(arg0, arg1)
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
									__FUNC_743B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_743B_)
							end

							if arg1.interrupted then
								__FUNC_72C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72C0_)
						end

						if arg1.interrupted then
							__FUNC_716B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_716B_)
					end

					if arg1.interrupted then
						__FUNC_6FF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FF0_)
				end

				if arg1.interrupted then
					__FUNC_6E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E9B_)
			end

			if arg1.interrupted then
				__FUNC_6D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D20_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_6BC9_(registerVal11, {})
		local function __FUNC_75ED_(arg0, arg1)
			local function __FUNC_7744_(arg0, arg1)
				local function __FUNC_78BF_(arg0, arg1)
					local function __FUNC_7A14_(arg0, arg1)
						local function __FUNC_7B8F_(arg0, arg1)
							local function __FUNC_7CE4_(arg0, arg1)
								local function __FUNC_7E5F_(arg0, arg1)
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
									__FUNC_7E5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E5F_)
							end

							if arg1.interrupted then
								__FUNC_7CE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CE4_)
						end

						if arg1.interrupted then
							__FUNC_7B8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B8F_)
					end

					if arg1.interrupted then
						__FUNC_7A14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A14_)
				end

				if arg1.interrupted then
					__FUNC_78BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78BF_)
			end

			if arg1.interrupted then
				__FUNC_7744_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7744_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_75ED_(registerVal12, {})
		local function __FUNC_8011_(arg0, arg1)
			local function __FUNC_818B_(arg0, arg1)
				local function __FUNC_8303_(arg0, arg1)
					local function __FUNC_847B_(arg0, arg1)
						local function __FUNC_85D0_(arg0, arg1)
							local function __FUNC_874B_(arg0, arg1)
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
								__FUNC_874B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_874B_)
						end

						if arg1.interrupted then
							__FUNC_85D0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85D0_)
					end

					if arg1.interrupted then
						__FUNC_847B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_847B_)
				end

				if arg1.interrupted then
					__FUNC_8303_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8303_)
			end

			if arg1.interrupted then
				__FUNC_818B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_818B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_8011_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_5456_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_88FD_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
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
		registerVal2.WCFileshareIconExtraCamRender0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.PlusImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_88FD_
	local function __FUNC_8D34_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_8FC7_(arg0, arg1)
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
		__FUNC_8FC7_(registerVal4, {})
		local function __FUNC_9179_(arg0, arg1)
			local function __FUNC_92D0_(arg0, arg1)
				local function __FUNC_944B_(arg0, arg1)
					local function __FUNC_95A0_(arg0, arg1)
						local function __FUNC_971B_(arg0, arg1)
							local function __FUNC_9870_(arg0, arg1)
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
								__FUNC_9870_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9870_)
						end

						if arg1.interrupted then
							__FUNC_971B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_971B_)
					end

					if arg1.interrupted then
						__FUNC_95A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95A0_)
				end

				if arg1.interrupted then
					__FUNC_944B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_944B_)
			end

			if arg1.interrupted then
				__FUNC_92D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92D0_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_9179_(registerVal9, {})
		local function __FUNC_9A25_(arg0, arg1)
			local function __FUNC_9B7C_(arg0, arg1)
				local function __FUNC_9CF7_(arg0, arg1)
					local function __FUNC_9E6F_(arg0, arg1)
						local function __FUNC_9FE7_(arg0, arg1)
							local function __FUNC_A13C_(arg0, arg1)
								local function __FUNC_A2B7_(arg0, arg1)
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
									__FUNC_A2B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2B7_)
							end

							if arg1.interrupted then
								__FUNC_A13C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A13C_)
						end

						if arg1.interrupted then
							__FUNC_9FE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FE7_)
					end

					if arg1.interrupted then
						__FUNC_9E6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E6F_)
				end

				if arg1.interrupted then
					__FUNC_9CF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF7_)
			end

			if arg1.interrupted then
				__FUNC_9B7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B7C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_9A25_(registerVal10, {})
		local function __FUNC_A469_(arg0, arg1)
			local function __FUNC_A5C0_(arg0, arg1)
				local function __FUNC_A73B_(arg0, arg1)
					local function __FUNC_A890_(arg0, arg1)
						local function __FUNC_AA0B_(arg0, arg1)
							local function __FUNC_AB60_(arg0, arg1)
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
								__FUNC_AB60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB60_)
						end

						if arg1.interrupted then
							__FUNC_AA0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA0B_)
					end

					if arg1.interrupted then
						__FUNC_A890_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A890_)
				end

				if arg1.interrupted then
					__FUNC_A73B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A73B_)
			end

			if arg1.interrupted then
				__FUNC_A5C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5C0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_A469_(registerVal11, {})
		local function __FUNC_AD15_(arg0, arg1)
			local function __FUNC_AE6C_(arg0, arg1)
				local function __FUNC_AFE7_(arg0, arg1)
					local function __FUNC_B13C_(arg0, arg1)
						local function __FUNC_B2B7_(arg0, arg1)
							local function __FUNC_B40C_(arg0, arg1)
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
								__FUNC_B40C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B40C_)
						end

						if arg1.interrupted then
							__FUNC_B2B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2B7_)
					end

					if arg1.interrupted then
						__FUNC_B13C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B13C_)
				end

				if arg1.interrupted then
					__FUNC_AFE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFE7_)
			end

			if arg1.interrupted then
				__FUNC_AE6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE6C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_AD15_(registerVal12, {})
		local function __FUNC_B5C1_(arg0, arg1)
			local function __FUNC_B718_(arg0, arg1)
				local function __FUNC_B893_(arg0, arg1)
					local function __FUNC_B9E8_(arg0, arg1)
						local function __FUNC_BB63_(arg0, arg1)
							local function __FUNC_BCB8_(arg0, arg1)
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
								__FUNC_BCB8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCB8_)
						end

						if arg1.interrupted then
							__FUNC_BB63_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB63_)
					end

					if arg1.interrupted then
						__FUNC_B9E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9E8_)
				end

				if arg1.interrupted then
					__FUNC_B893_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B893_)
			end

			if arg1.interrupted then
				__FUNC_B718_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B718_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_B5C1_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_8D34_
	local function __FUNC_BE6D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_BE6D_
	local function __FUNC_C026_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_C2B7_(arg0, arg1)
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
		__FUNC_C2B7_(registerVal4, {})
		local function __FUNC_C469_(arg0, arg1)
			local function __FUNC_C5E3_(arg0, arg1)
				local function __FUNC_C75B_(arg0, arg1)
					local function __FUNC_C8D3_(arg0, arg1)
						local function __FUNC_CA28_(arg0, arg1)
							local function __FUNC_CBA3_(arg0, arg1)
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
								__FUNC_CBA3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBA3_)
						end

						if arg1.interrupted then
							__FUNC_CA28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA28_)
					end

					if arg1.interrupted then
						__FUNC_C8D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8D3_)
				end

				if arg1.interrupted then
					__FUNC_C75B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C75B_)
			end

			if arg1.interrupted then
				__FUNC_C5E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5E3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_C469_(registerVal9, {})
		local function __FUNC_CD55_(arg0, arg1)
			local function __FUNC_CEAC_(arg0, arg1)
				local function __FUNC_D027_(arg0, arg1)
					local function __FUNC_D19F_(arg0, arg1)
						local function __FUNC_D317_(arg0, arg1)
							local function __FUNC_D46C_(arg0, arg1)
								local function __FUNC_D5E7_(arg0, arg1)
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
									__FUNC_D5E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5E7_)
							end

							if arg1.interrupted then
								__FUNC_D46C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D46C_)
						end

						if arg1.interrupted then
							__FUNC_D317_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D317_)
					end

					if arg1.interrupted then
						__FUNC_D19F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D19F_)
				end

				if arg1.interrupted then
					__FUNC_D027_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D027_)
			end

			if arg1.interrupted then
				__FUNC_CEAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEAC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_CD55_(registerVal10, {})
		local function __FUNC_D799_(arg0, arg1)
			local function __FUNC_D8F0_(arg0, arg1)
				local function __FUNC_DA6B_(arg0, arg1)
					local function __FUNC_DBC0_(arg0, arg1)
						local function __FUNC_DD3B_(arg0, arg1)
							local function __FUNC_DE90_(arg0, arg1)
								local function __FUNC_E00B_(arg0, arg1)
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
									__FUNC_E00B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E00B_)
							end

							if arg1.interrupted then
								__FUNC_DE90_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE90_)
						end

						if arg1.interrupted then
							__FUNC_DD3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD3B_)
					end

					if arg1.interrupted then
						__FUNC_DBC0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBC0_)
				end

				if arg1.interrupted then
					__FUNC_DA6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA6B_)
			end

			if arg1.interrupted then
				__FUNC_D8F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_D799_(registerVal11, {})
		local function __FUNC_E1BD_(arg0, arg1)
			local function __FUNC_E314_(arg0, arg1)
				local function __FUNC_E48F_(arg0, arg1)
					local function __FUNC_E5E4_(arg0, arg1)
						local function __FUNC_E75F_(arg0, arg1)
							local function __FUNC_E8B4_(arg0, arg1)
								local function __FUNC_EA2F_(arg0, arg1)
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
									__FUNC_EA2F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA2F_)
							end

							if arg1.interrupted then
								__FUNC_E8B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8B4_)
						end

						if arg1.interrupted then
							__FUNC_E75F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E75F_)
					end

					if arg1.interrupted then
						__FUNC_E5E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5E4_)
				end

				if arg1.interrupted then
					__FUNC_E48F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E48F_)
			end

			if arg1.interrupted then
				__FUNC_E314_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E314_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_E1BD_(registerVal12, {})
		local function __FUNC_EBE1_(arg0, arg1)
			local function __FUNC_ED5B_(arg0, arg1)
				local function __FUNC_EED3_(arg0, arg1)
					local function __FUNC_F04B_(arg0, arg1)
						local function __FUNC_F1A0_(arg0, arg1)
							local function __FUNC_F31B_(arg0, arg1)
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
								__FUNC_F31B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F31B_)
						end

						if arg1.interrupted then
							__FUNC_F1A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1A0_)
					end

					if arg1.interrupted then
						__FUNC_F04B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F04B_)
				end

				if arg1.interrupted then
					__FUNC_EED3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EED3_)
			end

			if arg1.interrupted then
				__FUNC_ED5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED5B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_EBE1_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_C026_
	registerVal19.ShowPlusImage = registerVal20
	registerVal20 = {}
	local function __FUNC_F4CD_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
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
		registerVal2.WCFileshareIconExtraCamRender0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.PlusImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_F4CD_
	local function __FUNC_F904_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_FB97_(arg0, arg1)
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
		__FUNC_FB97_(registerVal4, {})
		local function __FUNC_FD49_(arg0, arg1)
			local function __FUNC_FEA0_(arg0, arg1)
				local function __FUNC_1001B_(arg0, arg1)
					local function __FUNC_10170_(arg0, arg1)
						local function __FUNC_102EB_(arg0, arg1)
							local function __FUNC_10440_(arg0, arg1)
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
								__FUNC_10440_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10440_)
						end

						if arg1.interrupted then
							__FUNC_102EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102EB_)
					end

					if arg1.interrupted then
						__FUNC_10170_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10170_)
				end

				if arg1.interrupted then
					__FUNC_1001B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1001B_)
			end

			if arg1.interrupted then
				__FUNC_FEA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEA0_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_FD49_(registerVal9, {})
		local function __FUNC_105F5_(arg0, arg1)
			local function __FUNC_1074C_(arg0, arg1)
				local function __FUNC_108C7_(arg0, arg1)
					local function __FUNC_10A3F_(arg0, arg1)
						local function __FUNC_10BB7_(arg0, arg1)
							local function __FUNC_10D0C_(arg0, arg1)
								local function __FUNC_10E87_(arg0, arg1)
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
									__FUNC_10E87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E87_)
							end

							if arg1.interrupted then
								__FUNC_10D0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D0C_)
						end

						if arg1.interrupted then
							__FUNC_10BB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BB7_)
					end

					if arg1.interrupted then
						__FUNC_10A3F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A3F_)
				end

				if arg1.interrupted then
					__FUNC_108C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108C7_)
			end

			if arg1.interrupted then
				__FUNC_1074C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1074C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_105F5_(registerVal10, {})
		local function __FUNC_11039_(arg0, arg1)
			local function __FUNC_11190_(arg0, arg1)
				local function __FUNC_1130B_(arg0, arg1)
					local function __FUNC_11460_(arg0, arg1)
						local function __FUNC_115DB_(arg0, arg1)
							local function __FUNC_11730_(arg0, arg1)
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
								__FUNC_11730_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11730_)
						end

						if arg1.interrupted then
							__FUNC_115DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115DB_)
					end

					if arg1.interrupted then
						__FUNC_11460_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11460_)
				end

				if arg1.interrupted then
					__FUNC_1130B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1130B_)
			end

			if arg1.interrupted then
				__FUNC_11190_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11190_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_11039_(registerVal11, {})
		local function __FUNC_118E5_(arg0, arg1)
			local function __FUNC_11A3C_(arg0, arg1)
				local function __FUNC_11BB7_(arg0, arg1)
					local function __FUNC_11D0C_(arg0, arg1)
						local function __FUNC_11E87_(arg0, arg1)
							local function __FUNC_11FDC_(arg0, arg1)
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
								__FUNC_11FDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FDC_)
						end

						if arg1.interrupted then
							__FUNC_11E87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E87_)
					end

					if arg1.interrupted then
						__FUNC_11D0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D0C_)
				end

				if arg1.interrupted then
					__FUNC_11BB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BB7_)
			end

			if arg1.interrupted then
				__FUNC_11A3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A3C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_118E5_(registerVal12, {})
		local function __FUNC_12191_(arg0, arg1)
			local function __FUNC_122E8_(arg0, arg1)
				local function __FUNC_12463_(arg0, arg1)
					local function __FUNC_125B8_(arg0, arg1)
						local function __FUNC_12733_(arg0, arg1)
							local function __FUNC_12888_(arg0, arg1)
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
								__FUNC_12888_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12888_)
						end

						if arg1.interrupted then
							__FUNC_12733_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12733_)
					end

					if arg1.interrupted then
						__FUNC_125B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125B8_)
				end

				if arg1.interrupted then
					__FUNC_12463_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12463_)
			end

			if arg1.interrupted then
				__FUNC_122E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122E8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_12191_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_F904_
	local function __FUNC_12A3D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_12A3D_
	local function __FUNC_12BF6_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_12E87_(arg0, arg1)
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
		__FUNC_12E87_(registerVal4, {})
		local function __FUNC_13039_(arg0, arg1)
			local function __FUNC_131B3_(arg0, arg1)
				local function __FUNC_1332B_(arg0, arg1)
					local function __FUNC_134A3_(arg0, arg1)
						local function __FUNC_135F8_(arg0, arg1)
							local function __FUNC_13773_(arg0, arg1)
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
								__FUNC_13773_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13773_)
						end

						if arg1.interrupted then
							__FUNC_135F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135F8_)
					end

					if arg1.interrupted then
						__FUNC_134A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134A3_)
				end

				if arg1.interrupted then
					__FUNC_1332B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1332B_)
			end

			if arg1.interrupted then
				__FUNC_131B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131B3_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_13039_(registerVal9, {})
		local function __FUNC_13925_(arg0, arg1)
			local function __FUNC_13A7C_(arg0, arg1)
				local function __FUNC_13BF7_(arg0, arg1)
					local function __FUNC_13D6F_(arg0, arg1)
						local function __FUNC_13EE7_(arg0, arg1)
							local function __FUNC_1403C_(arg0, arg1)
								local function __FUNC_141B7_(arg0, arg1)
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
									__FUNC_141B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141B7_)
							end

							if arg1.interrupted then
								__FUNC_1403C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1403C_)
						end

						if arg1.interrupted then
							__FUNC_13EE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EE7_)
					end

					if arg1.interrupted then
						__FUNC_13D6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D6F_)
				end

				if arg1.interrupted then
					__FUNC_13BF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BF7_)
			end

			if arg1.interrupted then
				__FUNC_13A7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A7C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_13925_(registerVal10, {})
		local function __FUNC_14369_(arg0, arg1)
			local function __FUNC_144C0_(arg0, arg1)
				local function __FUNC_1463B_(arg0, arg1)
					local function __FUNC_14790_(arg0, arg1)
						local function __FUNC_1490B_(arg0, arg1)
							local function __FUNC_14A60_(arg0, arg1)
								local function __FUNC_14BDB_(arg0, arg1)
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
									__FUNC_14BDB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BDB_)
							end

							if arg1.interrupted then
								__FUNC_14A60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A60_)
						end

						if arg1.interrupted then
							__FUNC_1490B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1490B_)
					end

					if arg1.interrupted then
						__FUNC_14790_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14790_)
				end

				if arg1.interrupted then
					__FUNC_1463B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1463B_)
			end

			if arg1.interrupted then
				__FUNC_144C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144C0_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_14369_(registerVal11, {})
		local function __FUNC_14D8D_(arg0, arg1)
			local function __FUNC_14EE4_(arg0, arg1)
				local function __FUNC_1505F_(arg0, arg1)
					local function __FUNC_151B4_(arg0, arg1)
						local function __FUNC_1532F_(arg0, arg1)
							local function __FUNC_15484_(arg0, arg1)
								local function __FUNC_155FF_(arg0, arg1)
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
									__FUNC_155FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155FF_)
							end

							if arg1.interrupted then
								__FUNC_15484_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15484_)
						end

						if arg1.interrupted then
							__FUNC_1532F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1532F_)
					end

					if arg1.interrupted then
						__FUNC_151B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_151B4_)
				end

				if arg1.interrupted then
					__FUNC_1505F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1505F_)
			end

			if arg1.interrupted then
				__FUNC_14EE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14EE4_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_14D8D_(registerVal12, {})
		local function __FUNC_157B1_(arg0, arg1)
			local function __FUNC_1592B_(arg0, arg1)
				local function __FUNC_15AA3_(arg0, arg1)
					local function __FUNC_15C1B_(arg0, arg1)
						local function __FUNC_15D70_(arg0, arg1)
							local function __FUNC_15EEB_(arg0, arg1)
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
								__FUNC_15EEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15EEB_)
						end

						if arg1.interrupted then
							__FUNC_15D70_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D70_)
					end

					if arg1.interrupted then
						__FUNC_15C1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C1B_)
				end

				if arg1.interrupted then
					__FUNC_15AA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15AA3_)
			end

			if arg1.interrupted then
				__FUNC_1592B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1592B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_157B1_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_12BF6_
	registerVal19.CustomGame = registerVal20
	registerVal20 = {}
	local function __FUNC_1609D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
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
		registerVal2.WCFileshareIconExtraCamRender0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.PlusImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1609D_
	local function __FUNC_164D4_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_16767_(arg0, arg1)
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
		__FUNC_16767_(registerVal4, {})
		local function __FUNC_16919_(arg0, arg1)
			local function __FUNC_16A70_(arg0, arg1)
				local function __FUNC_16BEB_(arg0, arg1)
					local function __FUNC_16D40_(arg0, arg1)
						local function __FUNC_16EBB_(arg0, arg1)
							local function __FUNC_17010_(arg0, arg1)
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
								__FUNC_17010_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17010_)
						end

						if arg1.interrupted then
							__FUNC_16EBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16EBB_)
					end

					if arg1.interrupted then
						__FUNC_16D40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D40_)
				end

				if arg1.interrupted then
					__FUNC_16BEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BEB_)
			end

			if arg1.interrupted then
				__FUNC_16A70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A70_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_16919_(registerVal9, {})
		local function __FUNC_171C5_(arg0, arg1)
			local function __FUNC_1731C_(arg0, arg1)
				local function __FUNC_17497_(arg0, arg1)
					local function __FUNC_1760F_(arg0, arg1)
						local function __FUNC_17787_(arg0, arg1)
							local function __FUNC_178DC_(arg0, arg1)
								local function __FUNC_17A57_(arg0, arg1)
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
									__FUNC_17A57_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A57_)
							end

							if arg1.interrupted then
								__FUNC_178DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_178DC_)
						end

						if arg1.interrupted then
							__FUNC_17787_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17787_)
					end

					if arg1.interrupted then
						__FUNC_1760F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1760F_)
				end

				if arg1.interrupted then
					__FUNC_17497_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17497_)
			end

			if arg1.interrupted then
				__FUNC_1731C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1731C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_171C5_(registerVal10, {})
		local function __FUNC_17C09_(arg0, arg1)
			local function __FUNC_17D60_(arg0, arg1)
				local function __FUNC_17EDB_(arg0, arg1)
					local function __FUNC_18030_(arg0, arg1)
						local function __FUNC_181AB_(arg0, arg1)
							local function __FUNC_18300_(arg0, arg1)
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
								__FUNC_18300_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18300_)
						end

						if arg1.interrupted then
							__FUNC_181AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_181AB_)
					end

					if arg1.interrupted then
						__FUNC_18030_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18030_)
				end

				if arg1.interrupted then
					__FUNC_17EDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17EDB_)
			end

			if arg1.interrupted then
				__FUNC_17D60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D60_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_17C09_(registerVal11, {})
		local function __FUNC_184B5_(arg0, arg1)
			local function __FUNC_1860C_(arg0, arg1)
				local function __FUNC_18787_(arg0, arg1)
					local function __FUNC_188DC_(arg0, arg1)
						local function __FUNC_18A57_(arg0, arg1)
							local function __FUNC_18BAC_(arg0, arg1)
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
								__FUNC_18BAC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18BAC_)
						end

						if arg1.interrupted then
							__FUNC_18A57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A57_)
					end

					if arg1.interrupted then
						__FUNC_188DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188DC_)
				end

				if arg1.interrupted then
					__FUNC_18787_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18787_)
			end

			if arg1.interrupted then
				__FUNC_1860C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1860C_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_184B5_(registerVal12, {})
		local function __FUNC_18D61_(arg0, arg1)
			local function __FUNC_18EB8_(arg0, arg1)
				local function __FUNC_19033_(arg0, arg1)
					local function __FUNC_19188_(arg0, arg1)
						local function __FUNC_19303_(arg0, arg1)
							local function __FUNC_19458_(arg0, arg1)
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
								__FUNC_19458_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19458_)
						end

						if arg1.interrupted then
							__FUNC_19303_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19303_)
					end

					if arg1.interrupted then
						__FUNC_19188_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19188_)
				end

				if arg1.interrupted then
					__FUNC_19033_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19033_)
			end

			if arg1.interrupted then
				__FUNC_18EB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EB8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_18D61_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_164D4_
	local function __FUNC_1960D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_1960D_
	local function __FUNC_197C6_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_19A57_(arg0, arg1)
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
		__FUNC_19A57_(registerVal4, {})
		local function __FUNC_19C09_(arg0, arg1)
			local function __FUNC_19D83_(arg0, arg1)
				local function __FUNC_19EFB_(arg0, arg1)
					local function __FUNC_1A073_(arg0, arg1)
						local function __FUNC_1A1C8_(arg0, arg1)
							local function __FUNC_1A343_(arg0, arg1)
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
								__FUNC_1A343_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A343_)
						end

						if arg1.interrupted then
							__FUNC_1A1C8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A1C8_)
					end

					if arg1.interrupted then
						__FUNC_1A073_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A073_)
				end

				if arg1.interrupted then
					__FUNC_19EFB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EFB_)
			end

			if arg1.interrupted then
				__FUNC_19D83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D83_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_19C09_(registerVal9, {})
		local function __FUNC_1A4F5_(arg0, arg1)
			local function __FUNC_1A64C_(arg0, arg1)
				local function __FUNC_1A7C7_(arg0, arg1)
					local function __FUNC_1A93F_(arg0, arg1)
						local function __FUNC_1AAB7_(arg0, arg1)
							local function __FUNC_1AC0C_(arg0, arg1)
								local function __FUNC_1AD87_(arg0, arg1)
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
									__FUNC_1AD87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD87_)
							end

							if arg1.interrupted then
								__FUNC_1AC0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC0C_)
						end

						if arg1.interrupted then
							__FUNC_1AAB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAB7_)
					end

					if arg1.interrupted then
						__FUNC_1A93F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A93F_)
				end

				if arg1.interrupted then
					__FUNC_1A7C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7C7_)
			end

			if arg1.interrupted then
				__FUNC_1A64C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A64C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1A4F5_(registerVal10, {})
		local function __FUNC_1AF39_(arg0, arg1)
			local function __FUNC_1B090_(arg0, arg1)
				local function __FUNC_1B20B_(arg0, arg1)
					local function __FUNC_1B360_(arg0, arg1)
						local function __FUNC_1B4DB_(arg0, arg1)
							local function __FUNC_1B630_(arg0, arg1)
								local function __FUNC_1B7AB_(arg0, arg1)
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
									__FUNC_1B7AB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7AB_)
							end

							if arg1.interrupted then
								__FUNC_1B630_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B630_)
						end

						if arg1.interrupted then
							__FUNC_1B4DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4DB_)
					end

					if arg1.interrupted then
						__FUNC_1B360_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B360_)
				end

				if arg1.interrupted then
					__FUNC_1B20B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B20B_)
			end

			if arg1.interrupted then
				__FUNC_1B090_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B090_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1AF39_(registerVal11, {})
		local function __FUNC_1B95D_(arg0, arg1)
			local function __FUNC_1BAB4_(arg0, arg1)
				local function __FUNC_1BC2F_(arg0, arg1)
					local function __FUNC_1BD84_(arg0, arg1)
						local function __FUNC_1BEFF_(arg0, arg1)
							local function __FUNC_1C054_(arg0, arg1)
								local function __FUNC_1C1CF_(arg0, arg1)
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
									__FUNC_1C1CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1CF_)
							end

							if arg1.interrupted then
								__FUNC_1C054_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C054_)
						end

						if arg1.interrupted then
							__FUNC_1BEFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BEFF_)
					end

					if arg1.interrupted then
						__FUNC_1BD84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD84_)
				end

				if arg1.interrupted then
					__FUNC_1BC2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC2F_)
			end

			if arg1.interrupted then
				__FUNC_1BAB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BAB4_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_1B95D_(registerVal12, {})
		local function __FUNC_1C381_(arg0, arg1)
			local function __FUNC_1C4FB_(arg0, arg1)
				local function __FUNC_1C673_(arg0, arg1)
					local function __FUNC_1C7EB_(arg0, arg1)
						local function __FUNC_1C940_(arg0, arg1)
							local function __FUNC_1CABB_(arg0, arg1)
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
								__FUNC_1CABB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CABB_)
						end

						if arg1.interrupted then
							__FUNC_1C940_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C940_)
					end

					if arg1.interrupted then
						__FUNC_1C7EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7EB_)
				end

				if arg1.interrupted then
					__FUNC_1C673_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C673_)
			end

			if arg1.interrupted then
				__FUNC_1C4FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C4FB_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1C381_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_197C6_
	registerVal19.Screenshot = registerVal20
	registerVal20 = {}
	local function __FUNC_1CC6D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
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
		registerVal2.WCFileshareIconExtraCamRender0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.PlusImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1CC6D_
	local function __FUNC_1D0A4_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1D337_(arg0, arg1)
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
		__FUNC_1D337_(registerVal4, {})
		local function __FUNC_1D4E9_(arg0, arg1)
			local function __FUNC_1D640_(arg0, arg1)
				local function __FUNC_1D7BB_(arg0, arg1)
					local function __FUNC_1D910_(arg0, arg1)
						local function __FUNC_1DA8B_(arg0, arg1)
							local function __FUNC_1DBE0_(arg0, arg1)
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
								__FUNC_1DBE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBE0_)
						end

						if arg1.interrupted then
							__FUNC_1DA8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA8B_)
					end

					if arg1.interrupted then
						__FUNC_1D910_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D910_)
				end

				if arg1.interrupted then
					__FUNC_1D7BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7BB_)
			end

			if arg1.interrupted then
				__FUNC_1D640_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D640_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1D4E9_(registerVal9, {})
		local function __FUNC_1DD95_(arg0, arg1)
			local function __FUNC_1DEEC_(arg0, arg1)
				local function __FUNC_1E067_(arg0, arg1)
					local function __FUNC_1E1DF_(arg0, arg1)
						local function __FUNC_1E357_(arg0, arg1)
							local function __FUNC_1E4AC_(arg0, arg1)
								local function __FUNC_1E627_(arg0, arg1)
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
									__FUNC_1E627_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E627_)
							end

							if arg1.interrupted then
								__FUNC_1E4AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4AC_)
						end

						if arg1.interrupted then
							__FUNC_1E357_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E357_)
					end

					if arg1.interrupted then
						__FUNC_1E1DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1DF_)
				end

				if arg1.interrupted then
					__FUNC_1E067_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E067_)
			end

			if arg1.interrupted then
				__FUNC_1DEEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEEC_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1DD95_(registerVal10, {})
		local function __FUNC_1E7D9_(arg0, arg1)
			local function __FUNC_1E930_(arg0, arg1)
				local function __FUNC_1EAAB_(arg0, arg1)
					local function __FUNC_1EC00_(arg0, arg1)
						local function __FUNC_1ED7B_(arg0, arg1)
							local function __FUNC_1EED0_(arg0, arg1)
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
								__FUNC_1EED0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EED0_)
						end

						if arg1.interrupted then
							__FUNC_1ED7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED7B_)
					end

					if arg1.interrupted then
						__FUNC_1EC00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC00_)
				end

				if arg1.interrupted then
					__FUNC_1EAAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EAAB_)
			end

			if arg1.interrupted then
				__FUNC_1E930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E930_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1E7D9_(registerVal11, {})
		local function __FUNC_1F085_(arg0, arg1)
			local function __FUNC_1F1DC_(arg0, arg1)
				local function __FUNC_1F357_(arg0, arg1)
					local function __FUNC_1F4AC_(arg0, arg1)
						local function __FUNC_1F627_(arg0, arg1)
							local function __FUNC_1F77C_(arg0, arg1)
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
								__FUNC_1F77C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F77C_)
						end

						if arg1.interrupted then
							__FUNC_1F627_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F627_)
					end

					if arg1.interrupted then
						__FUNC_1F4AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4AC_)
				end

				if arg1.interrupted then
					__FUNC_1F357_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F357_)
			end

			if arg1.interrupted then
				__FUNC_1F1DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1DC_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1F085_(registerVal12, {})
		local function __FUNC_1F931_(arg0, arg1)
			local function __FUNC_1FA88_(arg0, arg1)
				local function __FUNC_1FC03_(arg0, arg1)
					local function __FUNC_1FD58_(arg0, arg1)
						local function __FUNC_1FED3_(arg0, arg1)
							local function __FUNC_20028_(arg0, arg1)
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
								__FUNC_20028_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20028_)
						end

						if arg1.interrupted then
							__FUNC_1FED3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FED3_)
					end

					if arg1.interrupted then
						__FUNC_1FD58_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD58_)
				end

				if arg1.interrupted then
					__FUNC_1FC03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC03_)
			end

			if arg1.interrupted then
				__FUNC_1FA88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA88_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1F931_(registerVal16, {})
	end

	registerVal20.GainFocus = __FUNC_1D0A4_
	local function __FUNC_201DD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal20.Focus = __FUNC_201DD_
	local function __FUNC_20396_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_20627_(arg0, arg1)
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
		__FUNC_20627_(registerVal4, {})
		local function __FUNC_207D9_(arg0, arg1)
			local function __FUNC_20953_(arg0, arg1)
				local function __FUNC_20ACB_(arg0, arg1)
					local function __FUNC_20C43_(arg0, arg1)
						local function __FUNC_20D98_(arg0, arg1)
							local function __FUNC_20F13_(arg0, arg1)
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
								__FUNC_20F13_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F13_)
						end

						if arg1.interrupted then
							__FUNC_20D98_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D98_)
					end

					if arg1.interrupted then
						__FUNC_20C43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C43_)
				end

				if arg1.interrupted then
					__FUNC_20ACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20ACB_)
			end

			if arg1.interrupted then
				__FUNC_20953_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20953_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_207D9_(registerVal9, {})
		local function __FUNC_210C5_(arg0, arg1)
			local function __FUNC_2121C_(arg0, arg1)
				local function __FUNC_21397_(arg0, arg1)
					local function __FUNC_2150F_(arg0, arg1)
						local function __FUNC_21687_(arg0, arg1)
							local function __FUNC_217DC_(arg0, arg1)
								local function __FUNC_21957_(arg0, arg1)
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
									__FUNC_21957_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21957_)
							end

							if arg1.interrupted then
								__FUNC_217DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217DC_)
						end

						if arg1.interrupted then
							__FUNC_21687_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21687_)
					end

					if arg1.interrupted then
						__FUNC_2150F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2150F_)
				end

				if arg1.interrupted then
					__FUNC_21397_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21397_)
			end

			if arg1.interrupted then
				__FUNC_2121C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2121C_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_210C5_(registerVal10, {})
		local function __FUNC_21B09_(arg0, arg1)
			local function __FUNC_21C60_(arg0, arg1)
				local function __FUNC_21DDB_(arg0, arg1)
					local function __FUNC_21F30_(arg0, arg1)
						local function __FUNC_220AB_(arg0, arg1)
							local function __FUNC_22200_(arg0, arg1)
								local function __FUNC_2237B_(arg0, arg1)
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
									__FUNC_2237B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2237B_)
							end

							if arg1.interrupted then
								__FUNC_22200_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22200_)
						end

						if arg1.interrupted then
							__FUNC_220AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220AB_)
					end

					if arg1.interrupted then
						__FUNC_21F30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F30_)
				end

				if arg1.interrupted then
					__FUNC_21DDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DDB_)
			end

			if arg1.interrupted then
				__FUNC_21C60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C60_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_21B09_(registerVal11, {})
		local function __FUNC_2252D_(arg0, arg1)
			local function __FUNC_22684_(arg0, arg1)
				local function __FUNC_227FF_(arg0, arg1)
					local function __FUNC_22954_(arg0, arg1)
						local function __FUNC_22ACF_(arg0, arg1)
							local function __FUNC_22C24_(arg0, arg1)
								local function __FUNC_22D9F_(arg0, arg1)
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
									__FUNC_22D9F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D9F_)
							end

							if arg1.interrupted then
								__FUNC_22C24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22C24_)
						end

						if arg1.interrupted then
							__FUNC_22ACF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22ACF_)
					end

					if arg1.interrupted then
						__FUNC_22954_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22954_)
				end

				if arg1.interrupted then
					__FUNC_227FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_227FF_)
			end

			if arg1.interrupted then
				__FUNC_22684_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22684_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2252D_(registerVal12, {})
		local function __FUNC_22F51_(arg0, arg1)
			local function __FUNC_230CB_(arg0, arg1)
				local function __FUNC_23243_(arg0, arg1)
					local function __FUNC_233BB_(arg0, arg1)
						local function __FUNC_23510_(arg0, arg1)
							local function __FUNC_2368B_(arg0, arg1)
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
								__FUNC_2368B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2368B_)
						end

						if arg1.interrupted then
							__FUNC_23510_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23510_)
					end

					if arg1.interrupted then
						__FUNC_233BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_233BB_)
				end

				if arg1.interrupted then
					__FUNC_23243_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23243_)
			end

			if arg1.interrupted then
				__FUNC_230CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_230CB_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_22F51_(registerVal16, {})
	end

	registerVal20.LoseFocus = __FUNC_20396_
	registerVal19.Clip = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "ShowPlusImage"
	local function __FUNC_2383D_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "showPlusImage", 1.000000)
	end

	registerVal22.condition = __FUNC_2383D_
	local registerVal23 = {}
	registerVal23.stateName = "CustomGame"
	local function __FUNC_238C1_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "fileCategory", "customgame")
	end

	registerVal23.condition = __FUNC_238C1_
	local registerVal24 = {}
	registerVal24.stateName = "Screenshot"
	local function __FUNC_23953_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "fileCategory", "screenshot")
	end

	registerVal24.condition = __FUNC_23953_
	local registerVal25 = {}
	registerVal25.stateName = "Clip"
	local function __FUNC_239E3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "fileCategory", "clip")
	end

	registerVal25.condition = __FUNC_239E3_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_23A6D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showPlusImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "showPlusImage", true, __FUNC_23A6D_)
	local function __FUNC_23B8F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileCategory"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "fileCategory", true, __FUNC_23B8F_)
	local function __FUNC_23CAE_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.LabelButton0:close()
		arg0.FocusBarT:close()
		arg0.FocusBorder:close()
		arg0.FocusBarB:close()
		arg0.WCFileshareIconExtraCamRender0:close()
		arg0.GameTypeImage:close()
		arg0.ImageViewer:close()
		arg0.FileSlotLabel:close()
		arg0.PlusImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_23CAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

