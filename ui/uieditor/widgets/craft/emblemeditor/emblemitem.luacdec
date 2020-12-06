-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBarMed")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.CAC.cac_LabelNew")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.BlackMarket.DuplicateCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemItem = registerVal1
function CoD.EmblemItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemItem)
	registerVal2.id = "EmblemItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 176.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.110000, 0.110000, 0.110000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.bgImage = registerVal6
	local registerVal7 = CoD.BM_GoldBarMed.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 6.000000, 171.000000)
	registerVal7:setTopBottom(true, false, 42.000000, 62.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMGoldBarMed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 176.000000, 176.000000)
	registerVal8:setTopBottom(true, false, 85.820000, 108.000000)
	registerVal8:setRGB(0.110000, 0.110000, 0.110000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.black = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -31.500000, 32.500000)
	registerVal9:setTopBottom(true, false, 20.000000, 84.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal9)
	registerVal2.blackMarketBrandIcon0 = registerVal9
	local registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_22D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setupEmblemByEmblemIndex(GetEmblemIndexParams(arg1, registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "emblemIndex", true, __FUNC_22D5_)
	registerVal2:addElement(registerVal10)
	registerVal2.itemImage = registerVal10
	local registerVal11 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal11:setTopBottom(false, false, 32.000000, 52.000000)
	registerVal11.Panel:setAlpha(0.800000)
	local function __FUNC_23A3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.itemName:setText(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "emblemName", true, __FUNC_23A3_)
	registerVal2:addElement(registerVal11)
	registerVal2.LabelButton = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -14.000000, 0.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal12:setRGB(0.560000, 0.680000, 0.270000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal12)
	registerVal2.equippedIcon = registerVal12
	local registerVal13 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal13:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.IconNew = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal14:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal14:setShaderVector(0.000000, 0.133333, 0.218182, 0.000000, 0.000000)
	registerVal14:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.BoxButtonLrgInactiveDiag0 = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal15:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal16:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal17:setRGB(1.000000, 0.300000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.FocusBorder = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal18:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal18:setRGB(1.000000, 0.090000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.glitch = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal19:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal19:setRGB(1.000000, 0.150000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.glitch2 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal20:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal20:setRGB(1.000000, 0.410000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_img_t7_menu_customclass_plus"))
	registerVal2:addElement(registerVal20)
	registerVal2.emptyLayerIcon = registerVal20
	local registerVal21 = CoD.ItemHintText.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -82.000000, 82.000000)
	registerVal21:setTopBottom(false, true, 1.000000, 31.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21.textCenterAlign:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	registerVal21.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2452_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_2452_)
	registerVal2:addElement(registerVal21)
	registerVal2.itemHintText = registerVal21
	local registerVal22 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal22:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal22:setTopBottom(false, true, -12.000000, -2.000000)
	registerVal22:setAlpha(0.000000)
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "NoHintText"
	local function __FUNC_24A2_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_24A2_
	registerVal25 = {registerVal26}
	registerVal22:mergeStateConditions(registerVal25)
	registerVal2:addElement(registerVal22)
	registerVal2.hintArrow = registerVal22
	local registerVal23 = CoD.cac_LabelNew.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, -54.000000, 54.000000)
	registerVal23:setTopBottom(false, false, -11.500000, 12.500000)
	registerVal23:setAlpha(0.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.IconNew0 = registerVal23
	local registerVal24 = CoD.DuplicateCounter.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 2.000000, 22.000000)
	registerVal24:setTopBottom(true, false, 0.000000, 20.000000)
	local function __FUNC_24ED_(arg0)
		registerVal24:setModel(arg0, arg1)
	end

	registerVal24:linkToElementModel(registerVal2, "rarityType", false, __FUNC_24ED_)
	registerVal2:addElement(registerVal24)
	registerVal2.DuplicateCounter = registerVal24
	registerVal25 = {}
	registerVal26 = {}
	local function __FUNC_253E_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_253E_
	local function __FUNC_2CAE_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.500000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_3168_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_3168_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_331D_(arg0, arg1)
			local function __FUNC_3474_(arg0, arg1)
				local function __FUNC_35EF_(arg0, arg1)
					local function __FUNC_3744_(arg0, arg1)
						local function __FUNC_38BF_(arg0, arg1)
							local function __FUNC_3A14_(arg0, arg1)
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
								__FUNC_3A14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A14_)
						end

						if arg1.interrupted then
							__FUNC_38BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38BF_)
					end

					if arg1.interrupted then
						__FUNC_3744_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3744_)
				end

				if arg1.interrupted then
					__FUNC_35EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35EF_)
			end

			if arg1.interrupted then
				__FUNC_3474_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3474_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_331D_(registerVal15, {})
		local function __FUNC_3BC9_(arg0, arg1)
			local function __FUNC_3D20_(arg0, arg1)
				local function __FUNC_3E9B_(arg0, arg1)
					local function __FUNC_3FF0_(arg0, arg1)
						local function __FUNC_416B_(arg0, arg1)
							local function __FUNC_42C0_(arg0, arg1)
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
								__FUNC_42C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42C0_)
						end

						if arg1.interrupted then
							__FUNC_416B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_416B_)
					end

					if arg1.interrupted then
						__FUNC_3FF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FF0_)
				end

				if arg1.interrupted then
					__FUNC_3E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E9B_)
			end

			if arg1.interrupted then
				__FUNC_3D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D20_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3BC9_(registerVal16, {})
		local function __FUNC_4475_(arg0, arg1)
			local function __FUNC_45CC_(arg0, arg1)
				local function __FUNC_4747_(arg0, arg1)
					local function __FUNC_48BF_(arg0, arg1)
						local function __FUNC_4A37_(arg0, arg1)
							local function __FUNC_4B8C_(arg0, arg1)
								local function __FUNC_4D07_(arg0, arg1)
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
									__FUNC_4D07_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D07_)
							end

							if arg1.interrupted then
								__FUNC_4B8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8C_)
						end

						if arg1.interrupted then
							__FUNC_4A37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A37_)
					end

					if arg1.interrupted then
						__FUNC_48BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48BF_)
				end

				if arg1.interrupted then
					__FUNC_4747_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4747_)
			end

			if arg1.interrupted then
				__FUNC_45CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45CC_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_4475_(registerVal17, {})
		local function __FUNC_4EB9_(arg0, arg1)
			local function __FUNC_5010_(arg0, arg1)
				local function __FUNC_518B_(arg0, arg1)
					local function __FUNC_52E0_(arg0, arg1)
						local function __FUNC_545B_(arg0, arg1)
							local function __FUNC_55B0_(arg0, arg1)
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
								__FUNC_55B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55B0_)
						end

						if arg1.interrupted then
							__FUNC_545B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_545B_)
					end

					if arg1.interrupted then
						__FUNC_52E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52E0_)
				end

				if arg1.interrupted then
					__FUNC_518B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_518B_)
			end

			if arg1.interrupted then
				__FUNC_5010_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5010_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4EB9_(registerVal18, {})
		local function __FUNC_5765_(arg0, arg1)
			local function __FUNC_58BC_(arg0, arg1)
				local function __FUNC_5A37_(arg0, arg1)
					local function __FUNC_5B8C_(arg0, arg1)
						local function __FUNC_5D07_(arg0, arg1)
							local function __FUNC_5E5C_(arg0, arg1)
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
								__FUNC_5E5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E5C_)
						end

						if arg1.interrupted then
							__FUNC_5D07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D07_)
					end

					if arg1.interrupted then
						__FUNC_5B8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B8C_)
				end

				if arg1.interrupted then
					__FUNC_5A37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A37_)
			end

			if arg1.interrupted then
				__FUNC_58BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58BC_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_5765_(registerVal19, {})
		local function __FUNC_6011_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		__FUNC_6011_(registerVal21, {})
		local function __FUNC_61C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_61C5_(registerVal22, {})
	end

	registerVal26.GainFocus = __FUNC_2CAE_
	local function __FUNC_6379_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_66A2_(arg0, arg1)
			local function __FUNC_67F8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_67F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67F8_)
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_66A2_(registerVal21, {})
		local function __FUNC_69AD_(arg0, arg1)
			local function __FUNC_6B04_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6B04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B04_)
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_69AD_(registerVal22, {})
	end

	registerVal26.Focus = __FUNC_6379_
	local function __FUNC_6CB9_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_70CF_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_70CF_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_7281_(arg0, arg1)
			local function __FUNC_73FB_(arg0, arg1)
				local function __FUNC_7573_(arg0, arg1)
					local function __FUNC_76EB_(arg0, arg1)
						local function __FUNC_7840_(arg0, arg1)
							local function __FUNC_79BB_(arg0, arg1)
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
								__FUNC_79BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79BB_)
						end

						if arg1.interrupted then
							__FUNC_7840_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7840_)
					end

					if arg1.interrupted then
						__FUNC_76EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76EB_)
				end

				if arg1.interrupted then
					__FUNC_7573_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7573_)
			end

			if arg1.interrupted then
				__FUNC_73FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73FB_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_7281_(registerVal15, {})
		local function __FUNC_7B6D_(arg0, arg1)
			local function __FUNC_7CE7_(arg0, arg1)
				local function __FUNC_7E5F_(arg0, arg1)
					local function __FUNC_7FD7_(arg0, arg1)
						local function __FUNC_812C_(arg0, arg1)
							local function __FUNC_82A7_(arg0, arg1)
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
								__FUNC_82A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82A7_)
						end

						if arg1.interrupted then
							__FUNC_812C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_812C_)
					end

					if arg1.interrupted then
						__FUNC_7FD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FD7_)
				end

				if arg1.interrupted then
					__FUNC_7E5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E5F_)
			end

			if arg1.interrupted then
				__FUNC_7CE7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CE7_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_7B6D_(registerVal16, {})
		local function __FUNC_8459_(arg0, arg1)
			local function __FUNC_85B0_(arg0, arg1)
				local function __FUNC_872B_(arg0, arg1)
					local function __FUNC_88A3_(arg0, arg1)
						local function __FUNC_8A1B_(arg0, arg1)
							local function __FUNC_8B70_(arg0, arg1)
								local function __FUNC_8CEB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8CEB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CEB_)
							end

							if arg1.interrupted then
								__FUNC_8B70_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B70_)
						end

						if arg1.interrupted then
							__FUNC_8A1B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A1B_)
					end

					if arg1.interrupted then
						__FUNC_88A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88A3_)
				end

				if arg1.interrupted then
					__FUNC_872B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_872B_)
			end

			if arg1.interrupted then
				__FUNC_85B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85B0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_8459_(registerVal17, {})
		local function __FUNC_8E9D_(arg0, arg1)
			local function __FUNC_8FF4_(arg0, arg1)
				local function __FUNC_916F_(arg0, arg1)
					local function __FUNC_92C4_(arg0, arg1)
						local function __FUNC_943F_(arg0, arg1)
							local function __FUNC_9594_(arg0, arg1)
								local function __FUNC_970F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_970F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_970F_)
							end

							if arg1.interrupted then
								__FUNC_9594_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9594_)
						end

						if arg1.interrupted then
							__FUNC_943F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_943F_)
					end

					if arg1.interrupted then
						__FUNC_92C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92C4_)
				end

				if arg1.interrupted then
					__FUNC_916F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_916F_)
			end

			if arg1.interrupted then
				__FUNC_8FF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FF4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_8E9D_(registerVal18, {})
		local function __FUNC_98C1_(arg0, arg1)
			local function __FUNC_9A18_(arg0, arg1)
				local function __FUNC_9B93_(arg0, arg1)
					local function __FUNC_9CE8_(arg0, arg1)
						local function __FUNC_9E63_(arg0, arg1)
							local function __FUNC_9FB8_(arg0, arg1)
								local function __FUNC_A133_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_A133_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A133_)
							end

							if arg1.interrupted then
								__FUNC_9FB8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FB8_)
						end

						if arg1.interrupted then
							__FUNC_9E63_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E63_)
					end

					if arg1.interrupted then
						__FUNC_9CE8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CE8_)
				end

				if arg1.interrupted then
					__FUNC_9B93_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B93_)
			end

			if arg1.interrupted then
				__FUNC_9A18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A18_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_98C1_(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal26.LoseFocus = __FUNC_6CB9_
	registerVal25.DefaultState = registerVal26
	registerVal26 = {}
	local function __FUNC_A2E5_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 49.500000, 127.500000)
		registerVal2.black:setTopBottom(true, false, 48.410000, 52.000000)
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setLeftRight(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_A2E5_
	local function __FUNC_AAEE_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_AEC0_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_AEC0_(registerVal5, {})
		local function __FUNC_B075_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_B075_(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_B229_(arg0, arg1)
			local function __FUNC_B380_(arg0, arg1)
				local function __FUNC_B4FB_(arg0, arg1)
					local function __FUNC_B650_(arg0, arg1)
						local function __FUNC_B7CB_(arg0, arg1)
							local function __FUNC_B920_(arg0, arg1)
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
								__FUNC_B920_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B920_)
						end

						if arg1.interrupted then
							__FUNC_B7CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7CB_)
					end

					if arg1.interrupted then
						__FUNC_B650_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B650_)
				end

				if arg1.interrupted then
					__FUNC_B4FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4FB_)
			end

			if arg1.interrupted then
				__FUNC_B380_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B380_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_B229_(registerVal15, {})
		local function __FUNC_BAD5_(arg0, arg1)
			local function __FUNC_BC2C_(arg0, arg1)
				local function __FUNC_BDA7_(arg0, arg1)
					local function __FUNC_BEFC_(arg0, arg1)
						local function __FUNC_C077_(arg0, arg1)
							local function __FUNC_C1CC_(arg0, arg1)
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
								__FUNC_C1CC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1CC_)
						end

						if arg1.interrupted then
							__FUNC_C077_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C077_)
					end

					if arg1.interrupted then
						__FUNC_BEFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEFC_)
				end

				if arg1.interrupted then
					__FUNC_BDA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDA7_)
			end

			if arg1.interrupted then
				__FUNC_BC2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC2C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_BAD5_(registerVal16, {})
		local function __FUNC_C381_(arg0, arg1)
			local function __FUNC_C4D8_(arg0, arg1)
				local function __FUNC_C653_(arg0, arg1)
					local function __FUNC_C7CB_(arg0, arg1)
						local function __FUNC_C943_(arg0, arg1)
							local function __FUNC_CA98_(arg0, arg1)
								local function __FUNC_CC13_(arg0, arg1)
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
									__FUNC_CC13_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC13_)
							end

							if arg1.interrupted then
								__FUNC_CA98_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA98_)
						end

						if arg1.interrupted then
							__FUNC_C943_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C943_)
					end

					if arg1.interrupted then
						__FUNC_C7CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7CB_)
				end

				if arg1.interrupted then
					__FUNC_C653_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C653_)
			end

			if arg1.interrupted then
				__FUNC_C4D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4D8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_C381_(registerVal17, {})
		local function __FUNC_CDC5_(arg0, arg1)
			local function __FUNC_CF1C_(arg0, arg1)
				local function __FUNC_D097_(arg0, arg1)
					local function __FUNC_D1EC_(arg0, arg1)
						local function __FUNC_D367_(arg0, arg1)
							local function __FUNC_D4BC_(arg0, arg1)
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
								__FUNC_D4BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4BC_)
						end

						if arg1.interrupted then
							__FUNC_D367_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D367_)
					end

					if arg1.interrupted then
						__FUNC_D1EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1EC_)
				end

				if arg1.interrupted then
					__FUNC_D097_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D097_)
			end

			if arg1.interrupted then
				__FUNC_CF1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF1C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_CDC5_(registerVal18, {})
		local function __FUNC_D671_(arg0, arg1)
			local function __FUNC_D7C8_(arg0, arg1)
				local function __FUNC_D943_(arg0, arg1)
					local function __FUNC_DA98_(arg0, arg1)
						local function __FUNC_DC13_(arg0, arg1)
							local function __FUNC_DD68_(arg0, arg1)
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
								__FUNC_DD68_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD68_)
						end

						if arg1.interrupted then
							__FUNC_DC13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC13_)
					end

					if arg1.interrupted then
						__FUNC_DA98_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA98_)
				end

				if arg1.interrupted then
					__FUNC_D943_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D943_)
			end

			if arg1.interrupted then
				__FUNC_D7C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7C8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_D671_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.GainFocus = __FUNC_AAEE_
	local function __FUNC_DF1D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.Focus = __FUNC_DF1D_
	local function __FUNC_E205_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_E55A_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_E55A_(registerVal5, {})
		local function __FUNC_E70D_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_E70D_(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_E8C1_(arg0, arg1)
			local function __FUNC_EA3B_(arg0, arg1)
				local function __FUNC_EBB3_(arg0, arg1)
					local function __FUNC_ED2B_(arg0, arg1)
						local function __FUNC_EE80_(arg0, arg1)
							local function __FUNC_EFFB_(arg0, arg1)
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
								__FUNC_EFFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFFB_)
						end

						if arg1.interrupted then
							__FUNC_EE80_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE80_)
					end

					if arg1.interrupted then
						__FUNC_ED2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED2B_)
				end

				if arg1.interrupted then
					__FUNC_EBB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBB3_)
			end

			if arg1.interrupted then
				__FUNC_EA3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA3B_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_E8C1_(registerVal15, {})
		local function __FUNC_F1AD_(arg0, arg1)
			local function __FUNC_F327_(arg0, arg1)
				local function __FUNC_F49F_(arg0, arg1)
					local function __FUNC_F617_(arg0, arg1)
						local function __FUNC_F76C_(arg0, arg1)
							local function __FUNC_F8E7_(arg0, arg1)
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
								__FUNC_F8E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8E7_)
						end

						if arg1.interrupted then
							__FUNC_F76C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F76C_)
					end

					if arg1.interrupted then
						__FUNC_F617_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F617_)
				end

				if arg1.interrupted then
					__FUNC_F49F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F49F_)
			end

			if arg1.interrupted then
				__FUNC_F327_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F327_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F1AD_(registerVal16, {})
		local function __FUNC_FA99_(arg0, arg1)
			local function __FUNC_FBF0_(arg0, arg1)
				local function __FUNC_FD6B_(arg0, arg1)
					local function __FUNC_FEE3_(arg0, arg1)
						local function __FUNC_1005B_(arg0, arg1)
							local function __FUNC_101B0_(arg0, arg1)
								local function __FUNC_1032B_(arg0, arg1)
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
									__FUNC_1032B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1032B_)
							end

							if arg1.interrupted then
								__FUNC_101B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101B0_)
						end

						if arg1.interrupted then
							__FUNC_1005B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1005B_)
					end

					if arg1.interrupted then
						__FUNC_FEE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FEE3_)
				end

				if arg1.interrupted then
					__FUNC_FD6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD6B_)
			end

			if arg1.interrupted then
				__FUNC_FBF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBF0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_FA99_(registerVal17, {})
		local function __FUNC_104DD_(arg0, arg1)
			local function __FUNC_10634_(arg0, arg1)
				local function __FUNC_107AF_(arg0, arg1)
					local function __FUNC_10904_(arg0, arg1)
						local function __FUNC_10A7F_(arg0, arg1)
							local function __FUNC_10BD4_(arg0, arg1)
								local function __FUNC_10D4F_(arg0, arg1)
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
									__FUNC_10D4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D4F_)
							end

							if arg1.interrupted then
								__FUNC_10BD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BD4_)
						end

						if arg1.interrupted then
							__FUNC_10A7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A7F_)
					end

					if arg1.interrupted then
						__FUNC_10904_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10904_)
				end

				if arg1.interrupted then
					__FUNC_107AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107AF_)
			end

			if arg1.interrupted then
				__FUNC_10634_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10634_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_104DD_(registerVal18, {})
		local function __FUNC_10F01_(arg0, arg1)
			local function __FUNC_11058_(arg0, arg1)
				local function __FUNC_111D3_(arg0, arg1)
					local function __FUNC_11328_(arg0, arg1)
						local function __FUNC_114A3_(arg0, arg1)
							local function __FUNC_115F8_(arg0, arg1)
								local function __FUNC_11773_(arg0, arg1)
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
									__FUNC_11773_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11773_)
							end

							if arg1.interrupted then
								__FUNC_115F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_115F8_)
						end

						if arg1.interrupted then
							__FUNC_114A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114A3_)
					end

					if arg1.interrupted then
						__FUNC_11328_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11328_)
				end

				if arg1.interrupted then
					__FUNC_111D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111D3_)
			end

			if arg1.interrupted then
				__FUNC_11058_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11058_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10F01_(registerVal19, {})
	end

	registerVal26.LoseFocus = __FUNC_E205_
	registerVal25.EmptySlot = registerVal26
	registerVal26 = {}
	local function __FUNC_11925_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setLeftRight(true, true, 1.000000, -1.000000)
		registerVal2.bgImage:setTopBottom(true, true, 1.000000, -1.000000)
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 60.500000, 116.500000)
		registerVal2.black:setTopBottom(true, false, 47.410000, 56.590000)
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_11925_
	local function __FUNC_12284_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.500000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_129F8_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_129F8_(registerVal5, {})
		local function __FUNC_12BAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		__FUNC_12BAD_(registerVal6, {})
		local function __FUNC_12D61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(0.650000)
		__FUNC_12D61_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 60.500000, 116.500000)
		registerVal2.black:setTopBottom(true, false, 47.410000, 56.590000)
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_12F15_(arg0, arg1)
			local function __FUNC_1308F_(arg0, arg1)
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
				__FUNC_1308F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1308F_)
		end

		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.650000)
		__FUNC_12F15_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_13241_(arg0, arg1)
			local function __FUNC_13398_(arg0, arg1)
				local function __FUNC_13513_(arg0, arg1)
					local function __FUNC_13668_(arg0, arg1)
						local function __FUNC_137E3_(arg0, arg1)
							local function __FUNC_13938_(arg0, arg1)
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
								__FUNC_13938_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13938_)
						end

						if arg1.interrupted then
							__FUNC_137E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137E3_)
					end

					if arg1.interrupted then
						__FUNC_13668_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13668_)
				end

				if arg1.interrupted then
					__FUNC_13513_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13513_)
			end

			if arg1.interrupted then
				__FUNC_13398_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13398_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_13241_(registerVal15, {})
		local function __FUNC_13AED_(arg0, arg1)
			local function __FUNC_13C44_(arg0, arg1)
				local function __FUNC_13DBF_(arg0, arg1)
					local function __FUNC_13F14_(arg0, arg1)
						local function __FUNC_1408F_(arg0, arg1)
							local function __FUNC_141E4_(arg0, arg1)
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
								__FUNC_141E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_141E4_)
						end

						if arg1.interrupted then
							__FUNC_1408F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1408F_)
					end

					if arg1.interrupted then
						__FUNC_13F14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13F14_)
				end

				if arg1.interrupted then
					__FUNC_13DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13DBF_)
			end

			if arg1.interrupted then
				__FUNC_13C44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C44_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_13AED_(registerVal16, {})
		local function __FUNC_14399_(arg0, arg1)
			local function __FUNC_144F0_(arg0, arg1)
				local function __FUNC_1466B_(arg0, arg1)
					local function __FUNC_147E3_(arg0, arg1)
						local function __FUNC_1495B_(arg0, arg1)
							local function __FUNC_14AB0_(arg0, arg1)
								local function __FUNC_14C2B_(arg0, arg1)
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
									__FUNC_14C2B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C2B_)
							end

							if arg1.interrupted then
								__FUNC_14AB0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AB0_)
						end

						if arg1.interrupted then
							__FUNC_1495B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1495B_)
					end

					if arg1.interrupted then
						__FUNC_147E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_147E3_)
				end

				if arg1.interrupted then
					__FUNC_1466B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1466B_)
			end

			if arg1.interrupted then
				__FUNC_144F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144F0_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_14399_(registerVal17, {})
		local function __FUNC_14DDD_(arg0, arg1)
			local function __FUNC_14F34_(arg0, arg1)
				local function __FUNC_150AF_(arg0, arg1)
					local function __FUNC_15204_(arg0, arg1)
						local function __FUNC_1537F_(arg0, arg1)
							local function __FUNC_154D4_(arg0, arg1)
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
								__FUNC_154D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154D4_)
						end

						if arg1.interrupted then
							__FUNC_1537F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1537F_)
					end

					if arg1.interrupted then
						__FUNC_15204_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15204_)
				end

				if arg1.interrupted then
					__FUNC_150AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150AF_)
			end

			if arg1.interrupted then
				__FUNC_14F34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F34_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_14DDD_(registerVal18, {})
		local function __FUNC_15689_(arg0, arg1)
			local function __FUNC_157E0_(arg0, arg1)
				local function __FUNC_1595B_(arg0, arg1)
					local function __FUNC_15AB0_(arg0, arg1)
						local function __FUNC_15C2B_(arg0, arg1)
							local function __FUNC_15D80_(arg0, arg1)
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
								__FUNC_15D80_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D80_)
						end

						if arg1.interrupted then
							__FUNC_15C2B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C2B_)
					end

					if arg1.interrupted then
						__FUNC_15AB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15AB0_)
				end

				if arg1.interrupted then
					__FUNC_1595B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1595B_)
			end

			if arg1.interrupted then
				__FUNC_157E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157E0_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_15689_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.GainFocus = __FUNC_12284_
	local function __FUNC_15F35_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.Focus = __FUNC_15F35_
	local function __FUNC_16435_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_16B2F_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_16B2F_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setRGB(0.110000, 0.110000, 0.110000)
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_16CE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.650000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BMGoldBarMed:setAlpha(1.000000)
		__FUNC_16CE1_(registerVal7, {})
		local function __FUNC_16E95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 60.500000, 115.500000)
			arg0:setTopBottom(true, false, 47.410000, 56.590000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.black:setLeftRight(true, false, 60.500000, 115.500000)
		registerVal2.black:setTopBottom(true, false, 47.410000, 56.590000)
		registerVal2.black:setAlpha(1.000000)
		__FUNC_16E95_(registerVal8, {})
		local function __FUNC_170B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.650000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(1.000000)
		__FUNC_170B9_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_1726D_(arg0, arg1)
			local function __FUNC_173E7_(arg0, arg1)
				local function __FUNC_1755F_(arg0, arg1)
					local function __FUNC_176D7_(arg0, arg1)
						local function __FUNC_1782C_(arg0, arg1)
							local function __FUNC_179A7_(arg0, arg1)
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
								__FUNC_179A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179A7_)
						end

						if arg1.interrupted then
							__FUNC_1782C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1782C_)
					end

					if arg1.interrupted then
						__FUNC_176D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_176D7_)
				end

				if arg1.interrupted then
					__FUNC_1755F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1755F_)
			end

			if arg1.interrupted then
				__FUNC_173E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_173E7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1726D_(registerVal15, {})
		local function __FUNC_17B59_(arg0, arg1)
			local function __FUNC_17CD3_(arg0, arg1)
				local function __FUNC_17E4B_(arg0, arg1)
					local function __FUNC_17FC3_(arg0, arg1)
						local function __FUNC_18118_(arg0, arg1)
							local function __FUNC_18293_(arg0, arg1)
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
								__FUNC_18293_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18293_)
						end

						if arg1.interrupted then
							__FUNC_18118_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18118_)
					end

					if arg1.interrupted then
						__FUNC_17FC3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FC3_)
				end

				if arg1.interrupted then
					__FUNC_17E4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E4B_)
			end

			if arg1.interrupted then
				__FUNC_17CD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17CD3_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_17B59_(registerVal16, {})
		local function __FUNC_18445_(arg0, arg1)
			local function __FUNC_1859C_(arg0, arg1)
				local function __FUNC_18717_(arg0, arg1)
					local function __FUNC_1888F_(arg0, arg1)
						local function __FUNC_18A07_(arg0, arg1)
							local function __FUNC_18B5C_(arg0, arg1)
								local function __FUNC_18CD7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_18CD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CD7_)
							end

							if arg1.interrupted then
								__FUNC_18B5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B5C_)
						end

						if arg1.interrupted then
							__FUNC_18A07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A07_)
					end

					if arg1.interrupted then
						__FUNC_1888F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1888F_)
				end

				if arg1.interrupted then
					__FUNC_18717_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18717_)
			end

			if arg1.interrupted then
				__FUNC_1859C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1859C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_18445_(registerVal17, {})
		local function __FUNC_18E89_(arg0, arg1)
			local function __FUNC_18FE0_(arg0, arg1)
				local function __FUNC_1915B_(arg0, arg1)
					local function __FUNC_192B0_(arg0, arg1)
						local function __FUNC_1942B_(arg0, arg1)
							local function __FUNC_19580_(arg0, arg1)
								local function __FUNC_196FB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_196FB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196FB_)
							end

							if arg1.interrupted then
								__FUNC_19580_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19580_)
						end

						if arg1.interrupted then
							__FUNC_1942B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1942B_)
					end

					if arg1.interrupted then
						__FUNC_192B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192B0_)
				end

				if arg1.interrupted then
					__FUNC_1915B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1915B_)
			end

			if arg1.interrupted then
				__FUNC_18FE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18FE0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_18E89_(registerVal18, {})
		local function __FUNC_198AD_(arg0, arg1)
			local function __FUNC_19A04_(arg0, arg1)
				local function __FUNC_19B7F_(arg0, arg1)
					local function __FUNC_19CD4_(arg0, arg1)
						local function __FUNC_19E4F_(arg0, arg1)
							local function __FUNC_19FA4_(arg0, arg1)
								local function __FUNC_1A11F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1A11F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A11F_)
							end

							if arg1.interrupted then
								__FUNC_19FA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19FA4_)
						end

						if arg1.interrupted then
							__FUNC_19E4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E4F_)
					end

					if arg1.interrupted then
						__FUNC_19CD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CD4_)
				end

				if arg1.interrupted then
					__FUNC_19B7F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B7F_)
			end

			if arg1.interrupted then
				__FUNC_19A04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A04_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_198AD_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.LoseFocus = __FUNC_16435_
	registerVal25.BMClassified = registerVal26
	registerVal26 = {}
	local function __FUNC_1A2D1_()
		registerVal2:setupElementClipCounter(19.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_1A2D1_
	local function __FUNC_1AA42_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.500000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_1AEFC_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_1AEFC_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_1B0B1_(arg0, arg1)
			local function __FUNC_1B208_(arg0, arg1)
				local function __FUNC_1B383_(arg0, arg1)
					local function __FUNC_1B4D8_(arg0, arg1)
						local function __FUNC_1B653_(arg0, arg1)
							local function __FUNC_1B7A8_(arg0, arg1)
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
								__FUNC_1B7A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7A8_)
						end

						if arg1.interrupted then
							__FUNC_1B653_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B653_)
					end

					if arg1.interrupted then
						__FUNC_1B4D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4D8_)
				end

				if arg1.interrupted then
					__FUNC_1B383_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B383_)
			end

			if arg1.interrupted then
				__FUNC_1B208_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B208_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1B0B1_(registerVal15, {})
		local function __FUNC_1B95D_(arg0, arg1)
			local function __FUNC_1BAB4_(arg0, arg1)
				local function __FUNC_1BC2F_(arg0, arg1)
					local function __FUNC_1BD84_(arg0, arg1)
						local function __FUNC_1BEFF_(arg0, arg1)
							local function __FUNC_1C054_(arg0, arg1)
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
								__FUNC_1C054_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C054_)
						end

						if arg1.interrupted then
							__FUNC_1BEFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BEFF_)
					end

					if arg1.interrupted then
						__FUNC_1BD84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD84_)
				end

				if arg1.interrupted then
					__FUNC_1BC2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BC2F_)
			end

			if arg1.interrupted then
				__FUNC_1BAB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BAB4_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1B95D_(registerVal16, {})
		local function __FUNC_1C209_(arg0, arg1)
			local function __FUNC_1C360_(arg0, arg1)
				local function __FUNC_1C4DB_(arg0, arg1)
					local function __FUNC_1C653_(arg0, arg1)
						local function __FUNC_1C7CB_(arg0, arg1)
							local function __FUNC_1C920_(arg0, arg1)
								local function __FUNC_1CA9B_(arg0, arg1)
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
									__FUNC_1CA9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CA9B_)
							end

							if arg1.interrupted then
								__FUNC_1C920_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C920_)
						end

						if arg1.interrupted then
							__FUNC_1C7CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7CB_)
					end

					if arg1.interrupted then
						__FUNC_1C653_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C653_)
				end

				if arg1.interrupted then
					__FUNC_1C4DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C4DB_)
			end

			if arg1.interrupted then
				__FUNC_1C360_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C360_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1C209_(registerVal17, {})
		local function __FUNC_1CC4D_(arg0, arg1)
			local function __FUNC_1CDA4_(arg0, arg1)
				local function __FUNC_1CF1F_(arg0, arg1)
					local function __FUNC_1D074_(arg0, arg1)
						local function __FUNC_1D1EF_(arg0, arg1)
							local function __FUNC_1D344_(arg0, arg1)
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
								__FUNC_1D344_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D344_)
						end

						if arg1.interrupted then
							__FUNC_1D1EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1EF_)
					end

					if arg1.interrupted then
						__FUNC_1D074_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D074_)
				end

				if arg1.interrupted then
					__FUNC_1CF1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CF1F_)
			end

			if arg1.interrupted then
				__FUNC_1CDA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CDA4_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1CC4D_(registerVal18, {})
		local function __FUNC_1D4F9_(arg0, arg1)
			local function __FUNC_1D650_(arg0, arg1)
				local function __FUNC_1D7CB_(arg0, arg1)
					local function __FUNC_1D920_(arg0, arg1)
						local function __FUNC_1DA9B_(arg0, arg1)
							local function __FUNC_1DBF0_(arg0, arg1)
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
								__FUNC_1DBF0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBF0_)
						end

						if arg1.interrupted then
							__FUNC_1DA9B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA9B_)
					end

					if arg1.interrupted then
						__FUNC_1D920_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D920_)
				end

				if arg1.interrupted then
					__FUNC_1D7CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D7CB_)
			end

			if arg1.interrupted then
				__FUNC_1D650_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D650_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1D4F9_(registerVal19, {})
		local function __FUNC_1DDA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		__FUNC_1DDA5_(registerVal21, {})
		local function __FUNC_1DF59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_1DF59_(registerVal22, {})
	end

	registerVal26.GainFocus = __FUNC_1AA42_
	local function __FUNC_1E10D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_1E48C_(arg0, arg1)
			local function __FUNC_1E5E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E5E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E5E4_)
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_1E48C_(registerVal21, {})
		local function __FUNC_1E799_(arg0, arg1)
			local function __FUNC_1E8F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E8F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8F0_)
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_1E799_(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal26.Focus = __FUNC_1E10D_
	local function __FUNC_1EAA5_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1EEBB_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_1EEBB_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_1F06D_(arg0, arg1)
			local function __FUNC_1F1E7_(arg0, arg1)
				local function __FUNC_1F35F_(arg0, arg1)
					local function __FUNC_1F4D7_(arg0, arg1)
						local function __FUNC_1F62C_(arg0, arg1)
							local function __FUNC_1F7A7_(arg0, arg1)
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
								__FUNC_1F7A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7A7_)
						end

						if arg1.interrupted then
							__FUNC_1F62C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F62C_)
					end

					if arg1.interrupted then
						__FUNC_1F4D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4D7_)
				end

				if arg1.interrupted then
					__FUNC_1F35F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F35F_)
			end

			if arg1.interrupted then
				__FUNC_1F1E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1E7_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1F06D_(registerVal15, {})
		local function __FUNC_1F959_(arg0, arg1)
			local function __FUNC_1FAD3_(arg0, arg1)
				local function __FUNC_1FC4B_(arg0, arg1)
					local function __FUNC_1FDC3_(arg0, arg1)
						local function __FUNC_1FF18_(arg0, arg1)
							local function __FUNC_20093_(arg0, arg1)
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
								__FUNC_20093_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20093_)
						end

						if arg1.interrupted then
							__FUNC_1FF18_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF18_)
					end

					if arg1.interrupted then
						__FUNC_1FDC3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FDC3_)
				end

				if arg1.interrupted then
					__FUNC_1FC4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC4B_)
			end

			if arg1.interrupted then
				__FUNC_1FAD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FAD3_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1F959_(registerVal16, {})
		local function __FUNC_20245_(arg0, arg1)
			local function __FUNC_2039C_(arg0, arg1)
				local function __FUNC_20517_(arg0, arg1)
					local function __FUNC_2068F_(arg0, arg1)
						local function __FUNC_20807_(arg0, arg1)
							local function __FUNC_2095C_(arg0, arg1)
								local function __FUNC_20AD7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_20AD7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AD7_)
							end

							if arg1.interrupted then
								__FUNC_2095C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2095C_)
						end

						if arg1.interrupted then
							__FUNC_20807_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20807_)
					end

					if arg1.interrupted then
						__FUNC_2068F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2068F_)
				end

				if arg1.interrupted then
					__FUNC_20517_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20517_)
			end

			if arg1.interrupted then
				__FUNC_2039C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2039C_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_20245_(registerVal17, {})
		local function __FUNC_20C89_(arg0, arg1)
			local function __FUNC_20DE0_(arg0, arg1)
				local function __FUNC_20F5B_(arg0, arg1)
					local function __FUNC_210B0_(arg0, arg1)
						local function __FUNC_2122B_(arg0, arg1)
							local function __FUNC_21380_(arg0, arg1)
								local function __FUNC_214FB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_214FB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_214FB_)
							end

							if arg1.interrupted then
								__FUNC_21380_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21380_)
						end

						if arg1.interrupted then
							__FUNC_2122B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2122B_)
					end

					if arg1.interrupted then
						__FUNC_210B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_210B0_)
				end

				if arg1.interrupted then
					__FUNC_20F5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20F5B_)
			end

			if arg1.interrupted then
				__FUNC_20DE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20DE0_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_20C89_(registerVal18, {})
		local function __FUNC_216AD_(arg0, arg1)
			local function __FUNC_21804_(arg0, arg1)
				local function __FUNC_2197F_(arg0, arg1)
					local function __FUNC_21AD4_(arg0, arg1)
						local function __FUNC_21C4F_(arg0, arg1)
							local function __FUNC_21DA4_(arg0, arg1)
								local function __FUNC_21F1F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_21F1F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F1F_)
							end

							if arg1.interrupted then
								__FUNC_21DA4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DA4_)
						end

						if arg1.interrupted then
							__FUNC_21C4F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21C4F_)
					end

					if arg1.interrupted then
						__FUNC_21AD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21AD4_)
				end

				if arg1.interrupted then
					__FUNC_2197F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2197F_)
			end

			if arg1.interrupted then
				__FUNC_21804_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21804_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_216AD_(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal26.LoseFocus = __FUNC_1EAA5_
	registerVal25.New = registerVal26
	registerVal26 = {}
	local function __FUNC_220D1_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_220D1_
	local function __FUNC_227DA_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_22B84_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_22B84_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_22D39_(arg0, arg1)
			local function __FUNC_22E90_(arg0, arg1)
				local function __FUNC_2300B_(arg0, arg1)
					local function __FUNC_23160_(arg0, arg1)
						local function __FUNC_232DB_(arg0, arg1)
							local function __FUNC_23430_(arg0, arg1)
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
								__FUNC_23430_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23430_)
						end

						if arg1.interrupted then
							__FUNC_232DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232DB_)
					end

					if arg1.interrupted then
						__FUNC_23160_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23160_)
				end

				if arg1.interrupted then
					__FUNC_2300B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2300B_)
			end

			if arg1.interrupted then
				__FUNC_22E90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E90_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_22D39_(registerVal15, {})
		local function __FUNC_235E5_(arg0, arg1)
			local function __FUNC_2373C_(arg0, arg1)
				local function __FUNC_238B7_(arg0, arg1)
					local function __FUNC_23A0C_(arg0, arg1)
						local function __FUNC_23B87_(arg0, arg1)
							local function __FUNC_23CDC_(arg0, arg1)
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
								__FUNC_23CDC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CDC_)
						end

						if arg1.interrupted then
							__FUNC_23B87_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B87_)
					end

					if arg1.interrupted then
						__FUNC_23A0C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A0C_)
				end

				if arg1.interrupted then
					__FUNC_238B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238B7_)
			end

			if arg1.interrupted then
				__FUNC_2373C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2373C_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_235E5_(registerVal16, {})
		local function __FUNC_23E91_(arg0, arg1)
			local function __FUNC_23FE8_(arg0, arg1)
				local function __FUNC_24163_(arg0, arg1)
					local function __FUNC_242DB_(arg0, arg1)
						local function __FUNC_24453_(arg0, arg1)
							local function __FUNC_245A8_(arg0, arg1)
								local function __FUNC_24723_(arg0, arg1)
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
									__FUNC_24723_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24723_)
							end

							if arg1.interrupted then
								__FUNC_245A8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245A8_)
						end

						if arg1.interrupted then
							__FUNC_24453_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24453_)
					end

					if arg1.interrupted then
						__FUNC_242DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_242DB_)
				end

				if arg1.interrupted then
					__FUNC_24163_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24163_)
			end

			if arg1.interrupted then
				__FUNC_23FE8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FE8_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_23E91_(registerVal17, {})
		local function __FUNC_248D5_(arg0, arg1)
			local function __FUNC_24A2C_(arg0, arg1)
				local function __FUNC_24BA7_(arg0, arg1)
					local function __FUNC_24CFC_(arg0, arg1)
						local function __FUNC_24E77_(arg0, arg1)
							local function __FUNC_24FCC_(arg0, arg1)
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
								__FUNC_24FCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24FCC_)
						end

						if arg1.interrupted then
							__FUNC_24E77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24E77_)
					end

					if arg1.interrupted then
						__FUNC_24CFC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24CFC_)
				end

				if arg1.interrupted then
					__FUNC_24BA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24BA7_)
			end

			if arg1.interrupted then
				__FUNC_24A2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24A2C_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_248D5_(registerVal18, {})
		local function __FUNC_25181_(arg0, arg1)
			local function __FUNC_252D8_(arg0, arg1)
				local function __FUNC_25453_(arg0, arg1)
					local function __FUNC_255A8_(arg0, arg1)
						local function __FUNC_25723_(arg0, arg1)
							local function __FUNC_25878_(arg0, arg1)
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
								__FUNC_25878_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25878_)
						end

						if arg1.interrupted then
							__FUNC_25723_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25723_)
					end

					if arg1.interrupted then
						__FUNC_255A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_255A8_)
				end

				if arg1.interrupted then
					__FUNC_25453_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25453_)
			end

			if arg1.interrupted then
				__FUNC_252D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252D8_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_25181_(registerVal19, {})
		local function __FUNC_25A2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		__FUNC_25A2D_(registerVal21, {})
		local function __FUNC_25BE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		__FUNC_25BE1_(registerVal22, {})
	end

	registerVal26.GainFocus = __FUNC_227DA_
	local function __FUNC_25D95_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_26056_(arg0, arg1)
			local function __FUNC_261AC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_261AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_261AC_)
		end

		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_26056_(registerVal21, {})
		local function __FUNC_26361_(arg0, arg1)
			local function __FUNC_264B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_264B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264B8_)
		end

		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_26361_(registerVal22, {})
	end

	registerVal26.Focus = __FUNC_25D95_
	local function __FUNC_2666D_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_26A20_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_26A20_(registerVal5, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_26BD5_(arg0, arg1)
			local function __FUNC_26D4F_(arg0, arg1)
				local function __FUNC_26EC7_(arg0, arg1)
					local function __FUNC_2703F_(arg0, arg1)
						local function __FUNC_27194_(arg0, arg1)
							local function __FUNC_2730F_(arg0, arg1)
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
								__FUNC_2730F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2730F_)
						end

						if arg1.interrupted then
							__FUNC_27194_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27194_)
					end

					if arg1.interrupted then
						__FUNC_2703F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2703F_)
				end

				if arg1.interrupted then
					__FUNC_26EC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EC7_)
			end

			if arg1.interrupted then
				__FUNC_26D4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D4F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_26BD5_(registerVal15, {})
		local function __FUNC_274C1_(arg0, arg1)
			local function __FUNC_2763B_(arg0, arg1)
				local function __FUNC_277B3_(arg0, arg1)
					local function __FUNC_2792B_(arg0, arg1)
						local function __FUNC_27A80_(arg0, arg1)
							local function __FUNC_27BFB_(arg0, arg1)
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
								__FUNC_27BFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27BFB_)
						end

						if arg1.interrupted then
							__FUNC_27A80_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A80_)
					end

					if arg1.interrupted then
						__FUNC_2792B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2792B_)
				end

				if arg1.interrupted then
					__FUNC_277B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277B3_)
			end

			if arg1.interrupted then
				__FUNC_2763B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2763B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_274C1_(registerVal16, {})
		local function __FUNC_27DAD_(arg0, arg1)
			local function __FUNC_27F04_(arg0, arg1)
				local function __FUNC_2807F_(arg0, arg1)
					local function __FUNC_281F7_(arg0, arg1)
						local function __FUNC_2836F_(arg0, arg1)
							local function __FUNC_284C4_(arg0, arg1)
								local function __FUNC_2863F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2863F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2863F_)
							end

							if arg1.interrupted then
								__FUNC_284C4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_284C4_)
						end

						if arg1.interrupted then
							__FUNC_2836F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2836F_)
					end

					if arg1.interrupted then
						__FUNC_281F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_281F7_)
				end

				if arg1.interrupted then
					__FUNC_2807F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2807F_)
			end

			if arg1.interrupted then
				__FUNC_27F04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F04_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_27DAD_(registerVal17, {})
		local function __FUNC_287F1_(arg0, arg1)
			local function __FUNC_28948_(arg0, arg1)
				local function __FUNC_28AC3_(arg0, arg1)
					local function __FUNC_28C18_(arg0, arg1)
						local function __FUNC_28D93_(arg0, arg1)
							local function __FUNC_28EE8_(arg0, arg1)
								local function __FUNC_29063_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_29063_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29063_)
							end

							if arg1.interrupted then
								__FUNC_28EE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28EE8_)
						end

						if arg1.interrupted then
							__FUNC_28D93_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D93_)
					end

					if arg1.interrupted then
						__FUNC_28C18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C18_)
				end

				if arg1.interrupted then
					__FUNC_28AC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28AC3_)
			end

			if arg1.interrupted then
				__FUNC_28948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28948_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_287F1_(registerVal18, {})
		local function __FUNC_29215_(arg0, arg1)
			local function __FUNC_2936C_(arg0, arg1)
				local function __FUNC_294E7_(arg0, arg1)
					local function __FUNC_2963C_(arg0, arg1)
						local function __FUNC_297B7_(arg0, arg1)
							local function __FUNC_2990C_(arg0, arg1)
								local function __FUNC_29A87_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_29A87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A87_)
							end

							if arg1.interrupted then
								__FUNC_2990C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2990C_)
						end

						if arg1.interrupted then
							__FUNC_297B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_297B7_)
					end

					if arg1.interrupted then
						__FUNC_2963C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2963C_)
				end

				if arg1.interrupted then
					__FUNC_294E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_294E7_)
			end

			if arg1.interrupted then
				__FUNC_2936C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2936C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_29215_(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal26.LoseFocus = __FUNC_2666D_
	registerVal25.Equipped = registerVal26
	registerVal26 = {}
	local function __FUNC_29C39_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.LabelButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.IconNew:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setLeftRight(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal23:completeAnimation()
		registerVal2.IconNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.DuplicateCounter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal26.DefaultClip = __FUNC_29C39_
	local function __FUNC_2A390_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2A7C7_(arg0, arg1)
			local function __FUNC_2A93F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A93F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A93F_)
		end

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2A7C7_(registerVal5, {})
		local function __FUNC_2AAF1_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_2AAF1_(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_2ACA5_(arg0, arg1)
			local function __FUNC_2ADFC_(arg0, arg1)
				local function __FUNC_2AF77_(arg0, arg1)
					local function __FUNC_2B0CC_(arg0, arg1)
						local function __FUNC_2B247_(arg0, arg1)
							local function __FUNC_2B39C_(arg0, arg1)
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
								__FUNC_2B39C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B39C_)
						end

						if arg1.interrupted then
							__FUNC_2B247_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B247_)
					end

					if arg1.interrupted then
						__FUNC_2B0CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B0CC_)
				end

				if arg1.interrupted then
					__FUNC_2AF77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF77_)
			end

			if arg1.interrupted then
				__FUNC_2ADFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ADFC_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_2ACA5_(registerVal15, {})
		local function __FUNC_2B551_(arg0, arg1)
			local function __FUNC_2B6A8_(arg0, arg1)
				local function __FUNC_2B823_(arg0, arg1)
					local function __FUNC_2B978_(arg0, arg1)
						local function __FUNC_2BAF3_(arg0, arg1)
							local function __FUNC_2BC48_(arg0, arg1)
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
								__FUNC_2BC48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC48_)
						end

						if arg1.interrupted then
							__FUNC_2BAF3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BAF3_)
					end

					if arg1.interrupted then
						__FUNC_2B978_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B978_)
				end

				if arg1.interrupted then
					__FUNC_2B823_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B823_)
			end

			if arg1.interrupted then
				__FUNC_2B6A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B6A8_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2B551_(registerVal16, {})
		local function __FUNC_2BDFD_(arg0, arg1)
			local function __FUNC_2BF54_(arg0, arg1)
				local function __FUNC_2C0CF_(arg0, arg1)
					local function __FUNC_2C247_(arg0, arg1)
						local function __FUNC_2C3BF_(arg0, arg1)
							local function __FUNC_2C514_(arg0, arg1)
								local function __FUNC_2C68F_(arg0, arg1)
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
									__FUNC_2C68F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C68F_)
							end

							if arg1.interrupted then
								__FUNC_2C514_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C514_)
						end

						if arg1.interrupted then
							__FUNC_2C3BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3BF_)
					end

					if arg1.interrupted then
						__FUNC_2C247_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C247_)
				end

				if arg1.interrupted then
					__FUNC_2C0CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0CF_)
			end

			if arg1.interrupted then
				__FUNC_2BF54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF54_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2BDFD_(registerVal17, {})
		local function __FUNC_2C841_(arg0, arg1)
			local function __FUNC_2C998_(arg0, arg1)
				local function __FUNC_2CB13_(arg0, arg1)
					local function __FUNC_2CC68_(arg0, arg1)
						local function __FUNC_2CDE3_(arg0, arg1)
							local function __FUNC_2CF38_(arg0, arg1)
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
								__FUNC_2CF38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF38_)
						end

						if arg1.interrupted then
							__FUNC_2CDE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDE3_)
					end

					if arg1.interrupted then
						__FUNC_2CC68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC68_)
				end

				if arg1.interrupted then
					__FUNC_2CB13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CB13_)
			end

			if arg1.interrupted then
				__FUNC_2C998_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C998_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_2C841_(registerVal18, {})
		local function __FUNC_2D0ED_(arg0, arg1)
			local function __FUNC_2D244_(arg0, arg1)
				local function __FUNC_2D3BF_(arg0, arg1)
					local function __FUNC_2D514_(arg0, arg1)
						local function __FUNC_2D68F_(arg0, arg1)
							local function __FUNC_2D7E4_(arg0, arg1)
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
								__FUNC_2D7E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D7E4_)
						end

						if arg1.interrupted then
							__FUNC_2D68F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D68F_)
					end

					if arg1.interrupted then
						__FUNC_2D514_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D514_)
				end

				if arg1.interrupted then
					__FUNC_2D3BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D3BF_)
			end

			if arg1.interrupted then
				__FUNC_2D244_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D244_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_2D0ED_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.GainFocus = __FUNC_2A390_
	local function __FUNC_2D999_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal20:completeAnimation()
		registerVal2.emptyLayerIcon:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal26.Focus = __FUNC_2D999_
	local function __FUNC_2DCE4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2E09D_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		__FUNC_2E09D_(registerVal5, {})
		local function __FUNC_2E251_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_2E251_(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_2E405_(arg0, arg1)
			local function __FUNC_2E57F_(arg0, arg1)
				local function __FUNC_2E6F7_(arg0, arg1)
					local function __FUNC_2E86F_(arg0, arg1)
						local function __FUNC_2E9C4_(arg0, arg1)
							local function __FUNC_2EB3F_(arg0, arg1)
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
								__FUNC_2EB3F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EB3F_)
						end

						if arg1.interrupted then
							__FUNC_2E9C4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9C4_)
					end

					if arg1.interrupted then
						__FUNC_2E86F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E86F_)
				end

				if arg1.interrupted then
					__FUNC_2E6F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6F7_)
			end

			if arg1.interrupted then
				__FUNC_2E57F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E57F_)
		end

		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2E405_(registerVal15, {})
		local function __FUNC_2ECF1_(arg0, arg1)
			local function __FUNC_2EE6B_(arg0, arg1)
				local function __FUNC_2EFE3_(arg0, arg1)
					local function __FUNC_2F15B_(arg0, arg1)
						local function __FUNC_2F2B0_(arg0, arg1)
							local function __FUNC_2F42B_(arg0, arg1)
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
								__FUNC_2F42B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F42B_)
						end

						if arg1.interrupted then
							__FUNC_2F2B0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F2B0_)
					end

					if arg1.interrupted then
						__FUNC_2F15B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F15B_)
				end

				if arg1.interrupted then
					__FUNC_2EFE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFE3_)
			end

			if arg1.interrupted then
				__FUNC_2EE6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE6B_)
		end

		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2ECF1_(registerVal16, {})
		local function __FUNC_2F5DD_(arg0, arg1)
			local function __FUNC_2F734_(arg0, arg1)
				local function __FUNC_2F8AF_(arg0, arg1)
					local function __FUNC_2FA27_(arg0, arg1)
						local function __FUNC_2FB9F_(arg0, arg1)
							local function __FUNC_2FCF4_(arg0, arg1)
								local function __FUNC_2FE6F_(arg0, arg1)
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
									__FUNC_2FE6F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE6F_)
							end

							if arg1.interrupted then
								__FUNC_2FCF4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FCF4_)
						end

						if arg1.interrupted then
							__FUNC_2FB9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB9F_)
					end

					if arg1.interrupted then
						__FUNC_2FA27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FA27_)
				end

				if arg1.interrupted then
					__FUNC_2F8AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F8AF_)
			end

			if arg1.interrupted then
				__FUNC_2F734_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F734_)
		end

		registerVal17:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2F5DD_(registerVal17, {})
		local function __FUNC_30021_(arg0, arg1)
			local function __FUNC_30178_(arg0, arg1)
				local function __FUNC_302F3_(arg0, arg1)
					local function __FUNC_30448_(arg0, arg1)
						local function __FUNC_305C3_(arg0, arg1)
							local function __FUNC_30718_(arg0, arg1)
								local function __FUNC_30893_(arg0, arg1)
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
									__FUNC_30893_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30893_)
							end

							if arg1.interrupted then
								__FUNC_30718_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30718_)
						end

						if arg1.interrupted then
							__FUNC_305C3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_305C3_)
					end

					if arg1.interrupted then
						__FUNC_30448_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30448_)
				end

				if arg1.interrupted then
					__FUNC_302F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_302F3_)
			end

			if arg1.interrupted then
				__FUNC_30178_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30178_)
		end

		registerVal18:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_30021_(registerVal18, {})
		local function __FUNC_30A45_(arg0, arg1)
			local function __FUNC_30B9C_(arg0, arg1)
				local function __FUNC_30D17_(arg0, arg1)
					local function __FUNC_30E6C_(arg0, arg1)
						local function __FUNC_30FE7_(arg0, arg1)
							local function __FUNC_3113C_(arg0, arg1)
								local function __FUNC_312B7_(arg0, arg1)
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
									__FUNC_312B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_312B7_)
							end

							if arg1.interrupted then
								__FUNC_3113C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3113C_)
						end

						if arg1.interrupted then
							__FUNC_30FE7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30FE7_)
					end

					if arg1.interrupted then
						__FUNC_30E6C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E6C_)
				end

				if arg1.interrupted then
					__FUNC_30D17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30D17_)
			end

			if arg1.interrupted then
				__FUNC_30B9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B9C_)
		end

		registerVal19:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_30A45_(registerVal19, {})
	end

	registerVal26.LoseFocus = __FUNC_2DCE4_
	registerVal25.NonClickableEmptySlot = registerVal26
	registerVal2.clipsPerState = registerVal25
	local registerVal27 = {}
	local registerVal28 = {}
	registerVal28.stateName = "EmptySlot"
	local function __FUNC_31469_(arg0, arg1, arg2)
		return true
	end

	registerVal28.condition = __FUNC_31469_
	local registerVal29 = {}
	registerVal29.stateName = "BMClassified"
	local function __FUNC_3149C_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal29.condition = __FUNC_3149C_
	local registerVal30 = {}
	registerVal30.stateName = "New"
	local function __FUNC_31516_(arg0, arg2, arg3)
		return Emblems_IsEmblemNew(arg2, arg1)
	end

	registerVal30.condition = __FUNC_31516_
	local registerVal31 = {}
	registerVal31.stateName = "Equipped"
	local function __FUNC_31571_(arg0, arg1, arg2)
		return true
	end

	registerVal31.condition = __FUNC_31571_
	local registerVal32 = {}
	registerVal32.stateName = "NonClickableEmptySlot"
	local function __FUNC_315A4_(arg0, arg1, arg2)
		return true
	end

	registerVal32.condition = __FUNC_315A4_
	registerVal27 = {registerVal28, registerVal29, registerVal30, registerVal31, registerVal32}
	registerVal2:mergeStateConditions(registerVal27)
	local function __FUNC_315D8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_315D8_)
	local function __FUNC_316FC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "emblemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "emblemIndex", true, __FUNC_316FC_)
	local function __FUNC_3181D_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BMGoldBarMed:close()
		arg0.LabelButton:close()
		arg0.IconNew:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
		arg0.IconNew0:close()
		arg0.DuplicateCounter:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3181D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

