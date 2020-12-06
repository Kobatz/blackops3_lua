-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreCategoryButton = registerVal1
function CoD.StoreCategoryButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreCategoryButton)
	registerVal2.id = "StoreCategoryButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 230.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Lbutton = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -3.970000, 3.380000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEFocusBarContainer0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 2.000000, 67.000000)
	registerVal6:setTopBottom(false, false, -29.810000, 29.810000)
	registerVal6:setRGB(0.060000, 0.080000, 0.100000)
	registerVal6:setAlpha(0.350000)
	registerVal2:addElement(registerVal6)
	registerVal2.itemImageBg = registerVal6
	local registerVal7 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 78.500000, 206.500000)
	registerVal7:setTopBottom(true, false, 23.830000, 43.830000)
	local function __FUNC_E10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "category_loc_ref", true, __FUNC_E10_)
	registerVal2:addElement(registerVal7)
	registerVal2.itemName = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 13.200000, 54.000000)
	registerVal8:setTopBottom(false, false, -19.320000, 18.980000)
	local function __FUNC_EE8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "imageName", true, __FUNC_EE8_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 65.000000, 69.000000)
	registerVal9:setTopBottom(false, false, -30.500000, 30.500000)
	registerVal9:setAlpha(0.300000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.itemImageLine = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 63.000000, 66.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_F9C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lbutton:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 13.200000, 54.000000)
		registerVal2.itemImage:setTopBottom(false, false, -19.320000, 18.980000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_F9C_
	local function __FUNC_13AE_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1847_(arg0, arg1)
			local function __FUNC_199C_(arg0, arg1)
				local function __FUNC_1B17_(arg0, arg1)
					local function __FUNC_1C8F_(arg0, arg1)
						local function __FUNC_1E07_(arg0, arg1)
							local function __FUNC_1F7F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 0.000000, 0.000000)
								arg0:setTopBottom(true, true, 0.000000, 0.000000)
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1F7F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7F_)
						end

						if arg1.interrupted then
							__FUNC_1E07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E07_)
					end

					if arg1.interrupted then
						__FUNC_1C8F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C8F_)
				end

				if arg1.interrupted then
					__FUNC_1B17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B17_)
			end

			if arg1.interrupted then
				__FUNC_199C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Lbutton:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setAlpha(0.000000)
		__FUNC_1847_(registerVal4, {})
		local function __FUNC_2192_(arg0, arg1)
			local function __FUNC_22E8_(arg0, arg1)
				local function __FUNC_2463_(arg0, arg1)
					local function __FUNC_25DB_(arg0, arg1)
						local function __FUNC_2753_(arg0, arg1)
							local function __FUNC_28A8_(arg0, arg1)
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
								__FUNC_28A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A8_)
						end

						if arg1.interrupted then
							__FUNC_2753_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2753_)
					end

					if arg1.interrupted then
						__FUNC_25DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25DB_)
				end

				if arg1.interrupted then
					__FUNC_2463_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2463_)
			end

			if arg1.interrupted then
				__FUNC_22E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E8_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(0.000000)
		__FUNC_2192_(registerVal5, {})
		local function __FUNC_2A5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setAlpha(1.000000)
		registerVal2.itemImageBg:setZoom(0.000000)
		__FUNC_2A5D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 13.200000, 54.000000)
		registerVal2.itemImage:setTopBottom(false, false, -19.320000, 18.980000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2C2E_(arg0, arg1)
			local function __FUNC_2D84_(arg0, arg1)
				local function __FUNC_2EFF_(arg0, arg1)
					local function __FUNC_3077_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3077_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3077_)
				end

				if arg1.interrupted then
					__FUNC_2EFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFF_)
			end

			if arg1.interrupted then
				__FUNC_2D84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D84_)
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2C2E_(registerVal10, {})
		registerVal2.nextClip = "GainFocus"
	end

	registerVal12.GainFocus = __FUNC_13AE_
	local function __FUNC_3229_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.Lbutton:setAlpha(1.000000)
		registerVal2.Lbutton:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 13.200000, 54.000000)
		registerVal2.itemImage:setTopBottom(false, false, -19.320000, 18.980000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImageLine:setLeftRight(true, false, 65.000000, 69.000000)
		registerVal2.itemImageLine:setTopBottom(false, false, -30.500000, 30.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_3229_
	local function __FUNC_364B_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_3A7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Lbutton:setAlpha(1.000000)
		registerVal2.Lbutton:setZoom(0.000000)
		__FUNC_3A7A_(registerVal4, {})
		local function __FUNC_3C48_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(1.000000)
		__FUNC_3C48_(registerVal5, {})
		local function __FUNC_3DFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.060000, 0.080000, 0.100000)
			arg0:setAlpha(0.350000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setRGB(0.060000, 0.080000, 0.100000)
		registerVal2.itemImageBg:setAlpha(0.350000)
		registerVal2.itemImageBg:setZoom(0.000000)
		__FUNC_3DFD_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, false, 13.200000, 54.000000)
		registerVal2.itemImage:setTopBottom(false, false, -19.320000, 18.980000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_4004_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4004_(registerVal10, {})
	end

	registerVal12.LoseFocus = __FUNC_364B_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_41B9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.Lbutton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setAlpha(0.175000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_41B9_
	local function __FUNC_4485_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lbutton:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Lbutton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemImageBg:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Active = __FUNC_4485_
	registerVal11.NoListFocus = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_4832_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.Lbutton:close()
		arg0.FEFocusBarContainer0:close()
		arg0.itemName:close()
		arg0.FocusBarB:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4832_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

