-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedMask")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.BorderBaked")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemIconNew = registerVal1
function CoD.EmblemIconNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemIconNew)
	registerVal2.id = "EmblemIconNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderBakedBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedBlur0 = registerVal3
	local registerVal4 = CoD.BorderBakedMask.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedMask0 = registerVal4
	local registerVal5 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedSolid0 = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactive = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal7:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal7:setRGB(0.110000, 0.110000, 0.110000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.bgImage = registerVal7
	local registerVal8 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal8:setTopBottom(true, false, 38.750000, 54.750000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BMGoldBarMed = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -31.500000, 31.500000)
	registerVal9:setTopBottom(true, false, 16.500000, 79.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal9)
	registerVal2.blackMarketBrandIcon = registerVal9
	local registerVal10 = CoD.BorderBaked.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.BorderBaked0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal11:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.backgroundMask = registerVal11
	local registerVal12 = LUI.UIElement.new()
	registerVal12:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal12:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_135E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupDrawDecalById(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "iconID", true, __FUNC_135E_)
	registerVal2:addElement(registerVal12)
	registerVal2.drawPaintshop = registerVal12
	local registerVal13 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBarB = registerVal13
	local registerVal14 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.FocusBarT = registerVal14
	local registerVal15 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal15:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.IconNew = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_13FB_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(0.800000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_13FB_
	local function __FUNC_18B8_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(1.000000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_1CE5_(arg0, arg1)
			local function __FUNC_1E5F_(arg0, arg1)
				local function __FUNC_1FD7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 2.000000, -2.000000)
					arg0:setTopBottom(false, true, -4.000000, 0.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1FD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD7_)
			end

			if arg1.interrupted then
				__FUNC_1E5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E5F_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1CE5_(registerVal13, {})
		local function __FUNC_21F9_(arg0, arg1)
			local function __FUNC_2373_(arg0, arg1)
				local function __FUNC_24EB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 2.000000, -2.000000)
					arg0:setTopBottom(true, false, 0.000000, 4.000000)
					arg0:setAlpha(0.970000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_24EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.970000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24EB_)
			end

			if arg1.interrupted then
				__FUNC_2373_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2373_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_21F9_(registerVal14, {})
	end

	registerVal17.Focus = __FUNC_18B8_
	local function __FUNC_270D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(1.000000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_2B00_(arg0, arg1)
			local function __FUNC_2C58_(arg0, arg1)
				local function __FUNC_2DD3_(arg0, arg1)
					local function __FUNC_2F4B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2F4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F4B_)
				end

				if arg1.interrupted then
					__FUNC_2DD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DD3_)
			end

			if arg1.interrupted then
				__FUNC_2C58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C58_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2B00_(registerVal13, {})
		local function __FUNC_30FD_(arg0, arg1)
			local function __FUNC_3254_(arg0, arg1)
				local function __FUNC_33CF_(arg0, arg1)
					local function __FUNC_3547_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setYRot(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3547_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3547_)
				end

				if arg1.interrupted then
					__FUNC_33CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33CF_)
			end

			if arg1.interrupted then
				__FUNC_3254_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3254_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.FocusBarT:setYRot(0.000000)
		registerVal2.FocusBarT:setZoom(0.000000)
		__FUNC_30FD_(registerVal14, {})
	end

	registerVal17.LoseFocus = __FUNC_270D_
	local function __FUNC_3733_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_3B5C_(arg0, arg1)
			local function __FUNC_3CD7_(arg0, arg1)
				local function __FUNC_3E4F_(arg0, arg1)
					local function __FUNC_3FC7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3FC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FC7_)
				end

				if arg1.interrupted then
					__FUNC_3E4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E4F_)
			end

			if arg1.interrupted then
				__FUNC_3CD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CD7_)
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_3B5C_(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(0.800000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_4179_(arg0, arg1)
			local function __FUNC_42D0_(arg0, arg1)
				local function __FUNC_444B_(arg0, arg1)
					local function __FUNC_45A0_(arg0, arg1)
						local function __FUNC_471B_(arg0, arg1)
							local function __FUNC_4893_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4893_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4893_)
						end

						if arg1.interrupted then
							__FUNC_471B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_471B_)
					end

					if arg1.interrupted then
						__FUNC_45A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A0_)
				end

				if arg1.interrupted then
					__FUNC_444B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_444B_)
			end

			if arg1.interrupted then
				__FUNC_42D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42D0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_4179_(registerVal13, {})
		local function __FUNC_4A45_(arg0, arg1)
			local function __FUNC_4B9C_(arg0, arg1)
				local function __FUNC_4D17_(arg0, arg1)
					local function __FUNC_4E6C_(arg0, arg1)
						local function __FUNC_4FE7_(arg0, arg1)
							local function __FUNC_515F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_515F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_515F_)
						end

						if arg1.interrupted then
							__FUNC_4FE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FE7_)
					end

					if arg1.interrupted then
						__FUNC_4E6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E6C_)
				end

				if arg1.interrupted then
					__FUNC_4D17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D17_)
			end

			if arg1.interrupted then
				__FUNC_4B9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B9C_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_4A45_(registerVal14, {})
	end

	registerVal17.GainFocus = __FUNC_3733_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_5311_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BoxButtonLrgInactive:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.bgImage:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setLeftRight(true, false, 0.000000, 96.000000)
		registerVal2.BMGoldBarMed:setTopBottom(true, false, 38.750000, 54.750000)
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(0.000000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_5311_
	local function __FUNC_5962_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_5CE6_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		__FUNC_5CE6_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal17.Focus = __FUNC_5962_
	local function __FUNC_5E99_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_6326_(arg0, arg1)
			local function __FUNC_647C_(arg0, arg1)
				local function __FUNC_65F7_(arg0, arg1)
					local function __FUNC_676F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_676F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_676F_)
				end

				if arg1.interrupted then
					__FUNC_65F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65F7_)
			end

			if arg1.interrupted then
				__FUNC_647C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_647C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_6326_(registerVal13, {})
		local function __FUNC_6921_(arg0, arg1)
			local function __FUNC_6A78_(arg0, arg1)
				local function __FUNC_6BF3_(arg0, arg1)
					local function __FUNC_6D6B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setYRot(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6D6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.650000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D6B_)
				end

				if arg1.interrupted then
					__FUNC_6BF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF3_)
			end

			if arg1.interrupted then
				__FUNC_6A78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A78_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.FocusBarT:setYRot(0.000000)
		registerVal2.FocusBarT:setZoom(0.000000)
		__FUNC_6921_(registerVal14, {})
	end

	registerVal17.LoseFocus = __FUNC_5E99_
	local function __FUNC_6F57_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_7416_(arg0, arg1)
			local function __FUNC_758F_(arg0, arg1)
				local function __FUNC_7707_(arg0, arg1)
					local function __FUNC_787F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_787F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_787F_)
				end

				if arg1.interrupted then
					__FUNC_7707_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7707_)
			end

			if arg1.interrupted then
				__FUNC_758F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_758F_)
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_7416_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_7A31_(arg0, arg1)
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

		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.650000)
		__FUNC_7A31_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_7BE5_(arg0, arg1)
			local function __FUNC_7D3C_(arg0, arg1)
				local function __FUNC_7EB7_(arg0, arg1)
					local function __FUNC_800C_(arg0, arg1)
						local function __FUNC_8187_(arg0, arg1)
							local function __FUNC_82FF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_82FF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82FF_)
						end

						if arg1.interrupted then
							__FUNC_8187_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8187_)
					end

					if arg1.interrupted then
						__FUNC_800C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_800C_)
				end

				if arg1.interrupted then
					__FUNC_7EB7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EB7_)
			end

			if arg1.interrupted then
				__FUNC_7D3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D3C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_7BE5_(registerVal13, {})
		local function __FUNC_84B1_(arg0, arg1)
			local function __FUNC_8608_(arg0, arg1)
				local function __FUNC_8783_(arg0, arg1)
					local function __FUNC_88D8_(arg0, arg1)
						local function __FUNC_8A53_(arg0, arg1)
							local function __FUNC_8BCB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_8BCB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BCB_)
						end

						if arg1.interrupted then
							__FUNC_8A53_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A53_)
					end

					if arg1.interrupted then
						__FUNC_88D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88D8_)
				end

				if arg1.interrupted then
					__FUNC_8783_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8783_)
			end

			if arg1.interrupted then
				__FUNC_8608_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8608_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_84B1_(registerVal14, {})
	end

	registerVal17.GainFocus = __FUNC_6F57_
	registerVal16.BMClassified = registerVal17
	registerVal17 = {}
	local function __FUNC_8D7D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(0.800000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.IconNew:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_8D7D_
	local function __FUNC_923C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(1.000000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_9669_(arg0, arg1)
			local function __FUNC_97E3_(arg0, arg1)
				local function __FUNC_995B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 2.000000, -2.000000)
					arg0:setTopBottom(false, true, -4.000000, 0.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_995B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_995B_)
			end

			if arg1.interrupted then
				__FUNC_97E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97E3_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_9669_(registerVal13, {})
		local function __FUNC_9B7D_(arg0, arg1)
			local function __FUNC_9CF7_(arg0, arg1)
				local function __FUNC_9E6F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 2.000000, -2.000000)
					arg0:setTopBottom(true, false, 0.000000, 4.000000)
					arg0:setAlpha(0.970000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9E6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.970000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E6F_)
			end

			if arg1.interrupted then
				__FUNC_9CF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF7_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_9B7D_(registerVal14, {})
	end

	registerVal17.Focus = __FUNC_923C_
	local function __FUNC_A091_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.700000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setAlpha(0.700000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(1.000000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_A484_(arg0, arg1)
			local function __FUNC_A5DC_(arg0, arg1)
				local function __FUNC_A757_(arg0, arg1)
					local function __FUNC_A8CF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A8CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8CF_)
				end

				if arg1.interrupted then
					__FUNC_A757_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A757_)
			end

			if arg1.interrupted then
				__FUNC_A5DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A5DC_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_A484_(registerVal13, {})
		local function __FUNC_AA81_(arg0, arg1)
			local function __FUNC_ABD8_(arg0, arg1)
				local function __FUNC_AD53_(arg0, arg1)
					local function __FUNC_AECB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setYRot(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AECB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.560000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AECB_)
				end

				if arg1.interrupted then
					__FUNC_AD53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD53_)
			end

			if arg1.interrupted then
				__FUNC_ABD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ABD8_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.FocusBarT:setYRot(0.000000)
		registerVal2.FocusBarT:setZoom(0.000000)
		__FUNC_AA81_(registerVal14, {})
	end

	registerVal17.LoseFocus = __FUNC_A091_
	local function __FUNC_B0B7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_B4E0_(arg0, arg1)
			local function __FUNC_B65B_(arg0, arg1)
				local function __FUNC_B7D3_(arg0, arg1)
					local function __FUNC_B94B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B94B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B94B_)
				end

				if arg1.interrupted then
					__FUNC_B7D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7D3_)
			end

			if arg1.interrupted then
				__FUNC_B65B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B65B_)
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_B4E0_(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 1.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.drawPaintshop:setAlpha(0.800000)
		registerVal2.drawPaintshop:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_BAFD_(arg0, arg1)
			local function __FUNC_BC54_(arg0, arg1)
				local function __FUNC_BDCF_(arg0, arg1)
					local function __FUNC_BF24_(arg0, arg1)
						local function __FUNC_C09F_(arg0, arg1)
							local function __FUNC_C217_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_C217_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C217_)
						end

						if arg1.interrupted then
							__FUNC_C09F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C09F_)
					end

					if arg1.interrupted then
						__FUNC_BF24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF24_)
				end

				if arg1.interrupted then
					__FUNC_BDCF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDCF_)
			end

			if arg1.interrupted then
				__FUNC_BC54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC54_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_BAFD_(registerVal13, {})
		local function __FUNC_C3C9_(arg0, arg1)
			local function __FUNC_C520_(arg0, arg1)
				local function __FUNC_C69B_(arg0, arg1)
					local function __FUNC_C7F0_(arg0, arg1)
						local function __FUNC_C96B_(arg0, arg1)
							local function __FUNC_CAE3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.350000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CAE3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAE3_)
						end

						if arg1.interrupted then
							__FUNC_C96B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C96B_)
					end

					if arg1.interrupted then
						__FUNC_C7F0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7F0_)
				end

				if arg1.interrupted then
					__FUNC_C69B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C69B_)
			end

			if arg1.interrupted then
				__FUNC_C520_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C520_)
		end

		registerVal14:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_C3C9_(registerVal14, {})
	end

	registerVal17.GainFocus = __FUNC_B0B7_
	registerVal16.New = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "BMClassified"
	local function __FUNC_CC95_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal19.condition = __FUNC_CC95_
	local registerVal20 = {}
	registerVal20.stateName = "New"
	local function __FUNC_CD0E_(arg0, arg2, arg3)
		return Emblems_IsIconNew(arg2, arg1)
	end

	registerVal20.condition = __FUNC_CD0E_
	registerVal18 = {registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_CD67_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_CD67_)
	local function __FUNC_CE88_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "iconID"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "iconID", true, __FUNC_CE88_)
	local function __FUNC_CFA4_(arg0)
		arg0.BorderBakedBlur0:close()
		arg0.BorderBakedMask0:close()
		arg0.BorderBakedSolid0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BMGoldBarMed:close()
		arg0.BorderBaked0:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.IconNew:close()
		arg0.drawPaintshop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CFA4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

