-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.BlackMarket.BM_SaleActive_Hori")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackMarketTradeAgainListItem = registerVal1
function CoD.BlackMarketTradeAgainListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackMarketTradeAgainListItem)
	registerVal2.id = "BlackMarketTradeAgainListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 77.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -30.340000, 106.340000)
	registerVal3:setTopBottom(true, false, -30.180000, 68.180000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_hoverup"))
	registerVal2:addElement(registerVal3)
	registerVal2.Up = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -30.340000, 106.340000)
	registerVal4:setTopBottom(true, false, -30.180000, 68.180000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_hoverdown"))
	registerVal2:addElement(registerVal4)
	registerVal2.down = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 3.000000, 74.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 24.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.cryptokeyCount = registerVal5
	local registerVal6 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 35.000000, 45.000000)
	registerVal6:setTopBottom(true, false, 36.460000, 46.460000)
	registerVal6:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_14B8_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_14B8_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_150A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_150A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.hintArrow0 = registerVal6
	local registerVal7 = CoD.ItemHintText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -38.000000, 118.000000)
	registerVal7:setTopBottom(true, false, 46.460000, 83.460000)
	registerVal7:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
	registerVal7:setAlpha(0.000000)
	registerVal7.textCenterAlign:setText(Engine.Localize("MPUI_BM_NOT_ENOUGH_COD_POINTS"))
	registerVal7.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_1555_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1555_
	local registerVal12 = {}
	registerVal12.stateName = "CenterAlign"
	local function __FUNC_15A1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_15A1_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.ItemHintText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 85.000000, 102.000000)
	registerVal8:setTopBottom(true, false, 5.500000, 22.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_arrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.arrow = registerVal8
	registerVal9 = CoD.BM_SaleActive_Hori.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 14.000000, 87.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 50.000000)
	local function __FUNC_15EC_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_15EC_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "SaleOn"
	local function __FUNC_163E_(arg0, arg2, arg3)
		local registerVal3 = IsLootSaleActive(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_163E_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_16F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "itemCODPointCost", true, __FUNC_16F6_)
	registerVal2:addElement(registerVal9)
	registerVal2.BMSaleActiveHori = registerVal9
	local function __FUNC_181A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.cryptokeyCount:linkToElementModel(registerVal2, "displayText", true, __FUNC_181A_)
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_18D2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_18D2_
	local function __FUNC_1BC1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1BC1_
	local function __FUNC_1EB1_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2220_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		__FUNC_2220_(registerVal3, {})
		local function __FUNC_23D5_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		__FUNC_23D5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_2589_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 85.000000, 102.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 90.000000, 107.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(0.000000)
		__FUNC_2589_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.GainFocus = __FUNC_1EB1_
	local function __FUNC_27AD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2AC7_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		__FUNC_2AC7_(registerVal3, {})
		local function __FUNC_2C79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(0.000000)
		__FUNC_2C79_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2E2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 90.000000, 107.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 85.000000, 102.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_2E2D_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.LoseFocus = __FUNC_27AD_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_3051_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_3051_
	local function __FUNC_33D7_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_33D7_
	local function __FUNC_375B_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_3BB6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		__FUNC_3BB6_(registerVal3, {})
		local function __FUNC_3D69_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		__FUNC_3D69_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_3F1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 85.000000, 102.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 90.000000, 107.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(0.000000)
		__FUNC_3F1D_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.GainFocus = __FUNC_375B_
	local function __FUNC_4141_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_44F1_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		__FUNC_44F1_(registerVal3, {})
		local function __FUNC_46A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(0.000000)
		__FUNC_46A5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_4859_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 90.000000, 107.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 85.000000, 102.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_4859_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.LoseFocus = __FUNC_4141_
	registerVal10.NotEnoughCODPoints = registerVal11
	registerVal11 = {}
	local function __FUNC_4A7D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_4A7D_
	local function __FUNC_4DC0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_4DC0_
	local function __FUNC_50B1_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5420_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		__FUNC_5420_(registerVal3, {})
		local function __FUNC_55D5_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		__FUNC_55D5_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_5789_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 85.000000, 102.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 90.000000, 107.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(0.000000)
		__FUNC_5789_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.GainFocus = __FUNC_50B1_
	local function __FUNC_59AD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5CC7_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		__FUNC_5CC7_(registerVal3, {})
		local function __FUNC_5E79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(0.000000)
		__FUNC_5E79_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_602D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 85.000000, 102.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 90.000000, 107.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_602D_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.LoseFocus = __FUNC_59AD_
	registerVal10.LootSale = registerVal11
	registerVal11 = {}
	local function __FUNC_6251_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.textCenterAlign:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.ItemHintText.textCenterAlign:setText(Engine.Localize("MPUI_BM_NOT_ENOUGH_CRYPTOKEYS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_6251_
	local function __FUNC_6682_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_6682_
	local function __FUNC_69B5_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_6ED5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.000000)
		__FUNC_6ED5_(registerVal3, {})
		local function __FUNC_7089_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(1.000000)
		__FUNC_7089_(registerVal4, {})
		local function __FUNC_723D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		__FUNC_723D_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.hintArrow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.textCenterAlign:completeAnimation()
		registerVal2.ItemHintText:setAlpha(0.000000)
		registerVal2.ItemHintText.textCenterAlign:setText(Engine.Localize("MPUI_BM_NOT_ENOUGH_CRYPTOKEYS"))
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_74AB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 85.000000, 102.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 90.000000, 107.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(0.000000)
		__FUNC_74AB_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.GainFocus = __FUNC_69B5_
	local function __FUNC_76CD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_7A61_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.Up:setAlpha(0.900000)
		__FUNC_7A61_(registerVal3, {})
		local function __FUNC_7C15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.down:setAlpha(0.000000)
		__FUNC_7C15_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokeyCount:setRGB(ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_7DC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 90.000000, 107.000000)
			arg0:setTopBottom(true, false, 5.500000, 22.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 85.000000, 102.000000)
		registerVal2.arrow:setTopBottom(true, false, 5.500000, 22.500000)
		registerVal2.arrow:setAlpha(1.000000)
		__FUNC_7DC9_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BMSaleActiveHori:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.LoseFocus = __FUNC_76CD_
	registerVal10.NotEnoughCryptoKeys = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "NotEnoughCODPoints"
	local function __FUNC_7FED_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.codPoints", "itemCODPointCost")
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_7FED_
	local registerVal14 = {}
	registerVal14.stateName = "LootSale"
	local function __FUNC_8103_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCODPointCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsLootSaleActive(arg1)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_8103_
	local registerVal15 = {}
	registerVal15.stateName = "NotEnoughCryptoKeys"
	local function __FUNC_81BA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "itemCost", 0.000000)
		if registerVal3 then
			registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.keyCount", "itemCost")
		end
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_81BA_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_82C6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCODPointCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCODPointCost", true, __FUNC_82C6_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CryptoKeyProgress.codPoints")
	local function __FUNC_83EA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_83EA_)
	local function __FUNC_8519_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCost", true, __FUNC_8519_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CryptoKeyProgress.keyCount")
	local function __FUNC_8636_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_8636_)
	local function __FUNC_8764_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "LootSale")
		if registerVal2 then
			UpdateElementState(registerVal2, "BMSaleActiveHori", arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_8764_)
	local function __FUNC_881B_(arg0)
		arg0.hintArrow0:close()
		arg0.ItemHintText:close()
		arg0.BMSaleActiveHori:close()
		arg0.cryptokeyCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_881B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

