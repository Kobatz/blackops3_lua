-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Common.common_ButtonLabel_01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareCategoriesSelectorListItem = registerVal1
function CoD.FileshareCategoriesSelectorListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareCategoriesSelectorListItem)
	registerVal2.id = "FileshareCategoriesSelectorListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
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
	registerVal7:setLeftRight(true, false, 64.000000, 68.000000)
	registerVal7:setTopBottom(false, false, -25.000000, 25.000000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.itemImageLine = registerVal7
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
	registerVal13:setLeftRight(true, false, 0.000000, 65.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal13:setRGB(0.180000, 0.180000, 0.180000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.CategoryIconBg = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 12.500000, 52.500000)
	registerVal14:setTopBottom(true, false, 5.000000, 45.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.CategoryIcon = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.200000)
	registerVal2:addElement(registerVal15)
	registerVal2.DimCoverImage = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -23.140000, -10.500000)
	registerVal16:setTopBottom(false, false, -5.820000, 6.820000)
	registerVal16:setAlpha(0.600000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow"))
	registerVal2:addElement(registerVal16)
	registerVal2.Arrow = registerVal16
	local registerVal17 = CoD.common_ButtonLabel_01.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 82.000000, 256.860000)
	registerVal17:setTopBottom(true, false, 15.500000, 35.500000)
	registerVal2:addElement(registerVal17)
	registerVal2.commonButtonLabel = registerVal17
	local function __FUNC_141D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.CategoryIcon:linkToElementModel(registerVal2, "displayImage", true, __FUNC_141D_)
	local function __FUNC_14D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.commonButtonLabel:linkToElementModel(registerVal2, "displayText", true, __FUNC_14D0_)
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_15A8_()
		registerVal2:setupElementClipCounter(11.000000)
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
		registerVal2.itemImageLine:setAlpha(0.300000)
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
		registerVal15:completeAnimation()
		registerVal2.DimCoverImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_15A8_
	local function __FUNC_1A44_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1C7D_(arg0, arg1)
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
		__FUNC_1C7D_(registerVal4, {})
		local function __FUNC_1E31_(arg0, arg1)
			local function __FUNC_1FAB_(arg0, arg1)
				local function __FUNC_2123_(arg0, arg1)
					local function __FUNC_229B_(arg0, arg1)
						local function __FUNC_2413_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2413_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2413_)
					end

					if arg1.interrupted then
						__FUNC_229B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_229B_)
				end

				if arg1.interrupted then
					__FUNC_2123_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2123_)
			end

			if arg1.interrupted then
				__FUNC_1FAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FAB_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1E31_(registerVal8, {})
		local function __FUNC_25C5_(arg0, arg1)
			local function __FUNC_273F_(arg0, arg1)
				local function __FUNC_28B7_(arg0, arg1)
					local function __FUNC_2A2F_(arg0, arg1)
						local function __FUNC_2BA7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2BA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BA7_)
					end

					if arg1.interrupted then
						__FUNC_2A2F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.480000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A2F_)
				end

				if arg1.interrupted then
					__FUNC_28B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28B7_)
			end

			if arg1.interrupted then
				__FUNC_273F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273F_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_25C5_(registerVal9, {})
		local function __FUNC_2D59_(arg0, arg1)
			local function __FUNC_2ED3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2ED3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED3_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2D59_(registerVal11, {})
		local function __FUNC_3085_(arg0, arg1)
			local function __FUNC_31FF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_31FF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31FF_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_3085_(registerVal12, {})
	end

	registerVal19.GainFocus = __FUNC_1A44_
	local function __FUNC_33B1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal19.Focus = __FUNC_33B1_
	local function __FUNC_356A_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_37A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_37A6_(registerVal4, {})
		local function __FUNC_3959_(arg0, arg1)
			local function __FUNC_3AD3_(arg0, arg1)
				local function __FUNC_3C4B_(arg0, arg1)
					local function __FUNC_3DC3_(arg0, arg1)
						local function __FUNC_3F3B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3F3B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F3B_)
					end

					if arg1.interrupted then
						__FUNC_3DC3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC3_)
				end

				if arg1.interrupted then
					__FUNC_3C4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C4B_)
			end

			if arg1.interrupted then
				__FUNC_3AD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AD3_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_3959_(registerVal8, {})
		local function __FUNC_40ED_(arg0, arg1)
			local function __FUNC_4267_(arg0, arg1)
				local function __FUNC_43DF_(arg0, arg1)
					local function __FUNC_4557_(arg0, arg1)
						local function __FUNC_46CF_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_46CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46CF_)
					end

					if arg1.interrupted then
						__FUNC_4557_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4557_)
				end

				if arg1.interrupted then
					__FUNC_43DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43DF_)
			end

			if arg1.interrupted then
				__FUNC_4267_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4267_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_40ED_(registerVal9, {})
		local function __FUNC_4881_(arg0, arg1)
			local function __FUNC_49FB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_49FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49FB_)
		end

		registerVal11:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_4881_(registerVal11, {})
		local function __FUNC_4BAD_(arg0, arg1)
			local function __FUNC_4D27_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D27_)
		end

		registerVal12:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_4BAD_(registerVal12, {})
	end

	registerVal19.LoseFocus = __FUNC_356A_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_4ED9_()
		registerVal2:setupElementClipCounter(6.000000)
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
		registerVal15:completeAnimation()
		registerVal2.DimCoverImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.DefaultClip = __FUNC_4ED9_
	local function __FUNC_5192_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal15:completeAnimation()
		registerVal2.DimCoverImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal19.Active = __FUNC_5192_
	registerVal18.NoListFocus = registerVal19
	registerVal2.clipsPerState = registerVal18
	local function __FUNC_5343_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.commonButtonLabel:close()
		arg0.CategoryIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5343_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

