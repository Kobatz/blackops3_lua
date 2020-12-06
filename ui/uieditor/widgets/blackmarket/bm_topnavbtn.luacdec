-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.FE_BlackMarketSpecialBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_TopNavBtn = registerVal1
function CoD.BM_TopNavBtn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_TopNavBtn)
	registerVal2.id = "BM_TopNavBtn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 115.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 41.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -8.000000, 121.910000)
	registerVal3:setTopBottom(true, false, -21.380000, 68.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe_header"))
	registerVal2:addElement(registerVal3)
	registerVal2.off = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -8.000000, 121.910000)
	registerVal4:setTopBottom(true, false, -21.380000, 68.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_bribe_header_hover"))
	registerVal2:addElement(registerVal4)
	registerVal2.on = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -51.750000, 53.750000)
	registerVal5:setTopBottom(true, false, 13.000000, 30.000000)
	registerVal5:setRGB(0.600000, 1.000000, 0.950000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(10.000000)
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setLetterSpacing(-0.600000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DA1_(arg0, arg1)
		TrimLabelIfLanguageReversed(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_DA1_)
	registerVal2:addElement(registerVal5)
	registerVal2.btnDisplayTextStroke0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -51.750000, 53.750000)
	registerVal6:setTopBottom(true, false, 13.000000, 30.000000)
	registerVal6:setRGB(0.600000, 1.000000, 0.950000)
	registerVal6:setZoom(10.000000)
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(-0.600000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E01_(arg0, arg1)
		TrimLabelIfLanguageReversed(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_E01_)
	registerVal2:addElement(registerVal6)
	registerVal2.btnDisplayTextStroke = registerVal6
	local registerVal7 = CoD.FE_BlackMarketSpecialBreadcrumb.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -57.500000, 25.500000)
	registerVal7:setTopBottom(false, false, -56.750000, 7.750000)
	registerVal7:setScale(0.500000)
	registerVal7.BMBreadlinker:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEBlackMarketSpecialBreadcrumb = registerVal7
	local function __FUNC_E61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke0:linkToElementModel(registerVal2, "displayText", true, __FUNC_E61_)
	local function __FUNC_F1A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke:linkToElementModel(registerVal2, "displayText", true, __FUNC_F1A_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_FD2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.off:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.on:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(0.600000, 1.000000, 0.950000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEBlackMarketSpecialBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FD2_
	local function __FUNC_1210_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_151A_(arg0, arg1)
			local function __FUNC_1670_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1670_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1670_)
		end

		registerVal3:completeAnimation()
		registerVal2.off:setAlpha(1.000000)
		__FUNC_151A_(registerVal3, {})
		local function __FUNC_1825_(arg0, arg1)
			local function __FUNC_199F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_199F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199F_)
		end

		registerVal4:completeAnimation()
		registerVal2.on:setAlpha(1.000000)
		__FUNC_1825_(registerVal4, {})
		local function __FUNC_1B51_(arg0, arg1)
			local function __FUNC_1CCB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1CCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCB_)
		end

		registerVal5:completeAnimation()
		registerVal2.btnDisplayTextStroke0:setAlpha(0.000000)
		__FUNC_1B51_(registerVal5, {})
		local function __FUNC_1E7D_(arg0, arg1)
			local function __FUNC_1FF7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.970000, 0.750000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1FF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF7_)
		end

		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(1.000000, 0.970000, 0.750000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_1E7D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEBlackMarketSpecialBreadcrumb:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal9.Focus = __FUNC_1210_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_21F9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.off:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.on:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(0.600000, 1.000000, 0.950000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEBlackMarketSpecialBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_21F9_
	local function __FUNC_2438_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2742_(arg0, arg1)
			local function __FUNC_2898_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2898_)
		end

		registerVal3:completeAnimation()
		registerVal2.off:setAlpha(1.000000)
		__FUNC_2742_(registerVal3, {})
		local function __FUNC_2A4D_(arg0, arg1)
			local function __FUNC_2BC7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC7_)
		end

		registerVal4:completeAnimation()
		registerVal2.on:setAlpha(1.000000)
		__FUNC_2A4D_(registerVal4, {})
		local function __FUNC_2D79_(arg0, arg1)
			local function __FUNC_2EF3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2EF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EF3_)
		end

		registerVal5:completeAnimation()
		registerVal2.btnDisplayTextStroke0:setAlpha(0.000000)
		__FUNC_2D79_(registerVal5, {})
		local function __FUNC_30A5_(arg0, arg1)
			local function __FUNC_321F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.970000, 0.750000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_321F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_321F_)
		end

		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(1.000000, 0.970000, 0.750000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_30A5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEBlackMarketSpecialBreadcrumb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal9.Focus = __FUNC_2438_
	registerVal8.HaveNewBlackMarketPromo = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "HaveNewBlackMarketPromo"
	local function __FUNC_3421_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "showBreadcrumb")
	end

	registerVal11.condition = __FUNC_3421_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_349A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showBreadcrumb"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "showBreadcrumb", true, __FUNC_349A_)
	local function __FUNC_35BC_(arg0)
		arg0.FEBlackMarketSpecialBreadcrumb:close()
		arg0.btnDisplayTextStroke0:close()
		arg0.btnDisplayTextStroke:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_35BC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

