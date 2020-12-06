-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ContractAmountWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_BJ_ActivatedWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_CC_Widget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_BJ_ReadyWidget")
local function __FUNC_32B_(arg0, arg1)
	local function __FUNC_3C3_(arg0, arg2)
		DataSources.SideBetCurrentChallenge.getModel(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_3C3_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_BlackjackInfoWidget = registerVal2
local function __FUNC_458_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_BlackjackInfoWidget)
	registerVal2.id = "BM_Contracts_BlackjackInfoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 417.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 518.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.160000, 410.840000)
	registerVal3:setTopBottom(true, false, 3.590000, 516.410000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.049058, 0.452407, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(20.000000, 232.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -417.000000, -9.160000)
	registerVal4:setTopBottom(false, true, -486.000000, -6.190000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_off"))
	registerVal2:addElement(registerVal4)
	registerVal2.BlackjackIconOff = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -417.000000, -9.160000)
	registerVal5:setTopBottom(false, true, -486.000000, -6.190000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack_completed"))
	registerVal2:addElement(registerVal5)
	registerVal2.BlackjackIconOn = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 3.160000, 410.220000)
	registerVal6:setTopBottom(true, false, 3.290000, 44.060000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_blackjack"))
	registerVal2:addElement(registerVal6)
	registerVal2.header = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 2.160000, -6.160000)
	registerVal7:setTopBottom(true, true, 4.000000, -3.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.137027, 0.109589, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BackgroundCompleted = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 2.160000, -6.160000)
	registerVal8:setTopBottom(true, true, 4.000000, -3.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.137027, 0.109589, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Background0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 19.750000, 259.750000)
	registerVal9:setTopBottom(true, false, 260.500000, 268.490000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.041667, 0.500376, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Divider0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 18.500000, 266.000000)
	registerVal10:setTopBottom(true, false, 14.560000, 33.560000)
	registerVal10:setRGB(0.940000, 0.890000, 0.590000)
	registerVal10:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setLetterSpacing(1.800000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.Title = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 25.000000, LanguageOverrideNumber("arabic", 225.000000, 292.500000))
	registerVal11:setTopBottom(true, false, 55.060000, 75.060000)
	registerVal11:setRGB(0.460000, 0.800000, 0.750000)
	registerVal11:setText(Engine.Localize("FEATURE_CONTRACTS_CAPS"))
	registerVal11:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal11:setLetterSpacing(-0.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ContractLabel = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 26.250000, 224.750000)
	registerVal12:setTopBottom(true, false, 151.190000, 169.190000)
	registerVal12:setRGB(0.880000, 0.880000, 0.880000)
	registerVal12:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACTS_DESC"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.BlackjackContractsDescription = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 20.250000, 267.750000)
	registerVal13:setTopBottom(true, false, 280.500000, 299.500000)
	registerVal13:setRGB(0.460000, 0.800000, 0.750000)
	registerVal13:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal13:setLetterSpacing(-0.500000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_202A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(ConvertToUpperString(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "title", __FUNC_202A_)
	registerVal2:addElement(registerVal13)
	registerVal2.SideBetTitle = registerVal13
	local registerVal14 = CoD.BM_Contracts_ContractAmountWidget.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 22.500000, 218.500000)
	registerVal14:setTopBottom(true, false, 69.190000, 149.190000)
	registerVal2:addElement(registerVal14)
	registerVal2.BMContractsContractAmountWidget = registerVal14
	local registerVal15 = CoD.BM_Contracts_BJ_ActivatedWidget.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 7.750000, 271.750000)
	registerVal15:setTopBottom(true, false, 223.500000, 247.500000)
	registerVal15.BMContractsBJTextWidget.Activated:setText(Engine.Localize("MENU_ACTIVATED_CAPS"))
	local function __FUNC_20E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.BMContractsBJTextWidget.TimeRemaining0:setText(LocalizeIntoString("MPUI_BM_CONTRACTS_TIME_REMAINING", SecondsAsTime(registerVal1)))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "timeSeconds", __FUNC_20E2_)
	registerVal2:addElement(registerVal15)
	registerVal2.BMContractsBJActivatedWidget = registerVal15
	local registerVal16 = CoD.BM_Contracts_CC_Widget.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, -33.000000, 317.000000)
	registerVal16:setTopBottom(true, false, 290.730000, 495.730000)
	local function __FUNC_2236_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", nil, __FUNC_2236_)
	local function __FUNC_2286_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "SideBetCurrentChallenge", "setCount", __FUNC_2286_)
	registerVal2:addElement(registerVal16)
	registerVal2.BMContractsCCWidget = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, -4.000000, 0.000000)
	registerVal17:setTopBottom(true, true, -2.540000, 4.000000)
	registerVal17:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal17:setShaderVector(0.000000, 0.114014, 0.091509, 0.000000, 0.000000)
	registerVal17:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.NineSliceShaderImage = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal18:setTopBottom(true, false, -15.770000, 32.280000)
	registerVal18:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow"))
	registerVal2:addElement(registerVal18)
	registerVal2.upperglow = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal19:setTopBottom(false, true, -6.750000, 33.250000)
	registerVal19:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow"))
	registerVal2:addElement(registerVal19)
	registerVal2.lowerglow = registerVal19
	local registerVal20 = CoD.BM_Contracts_BJ_ReadyWidget.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 7.750000, 201.750000)
	registerVal20:setTopBottom(true, false, 223.500000, 247.500000)
	registerVal20:setAlpha(0.000000)
	registerVal20.Activated:setText(LocalizeToUpperString("MPUI_BM_CONTRACT_BLACKJACK_READY_DESC"))
	registerVal2:addElement(registerVal20)
	registerVal2.BMContractsBJReadyWidget = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_2358_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.BMContractsBJActivatedWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsCCWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsBJReadyWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_2358_
	local function __FUNC_286D_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.BMContractsBJActivatedWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsCCWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_2D9E_(arg0, arg1)
			local function __FUNC_2F17_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F17_)
		end

		registerVal17:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_2D9E_(registerVal17, {})
		local function __FUNC_30C9_(arg0, arg1)
			local function __FUNC_3243_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3243_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3243_)
		end

		registerVal18:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_30C9_(registerVal18, {})
		local function __FUNC_33F5_(arg0, arg1)
			local function __FUNC_356F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_356F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_356F_)
		end

		registerVal19:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_33F5_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsBJReadyWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal22.Focus = __FUNC_286D_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_3721_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.BlackjackContractsDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsContractAmountWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMContractsBJActivatedWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsCCWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsBJReadyWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_3721_
	local function __FUNC_3D61_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BlackjackIconOff:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BlackjackIconOn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.BlackjackContractsDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.SideBetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BMContractsContractAmountWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMContractsBJActivatedWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.BMContractsCCWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_43BE_(arg0, arg1)
			local function __FUNC_4537_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4537_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4537_)
		end

		registerVal17:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_43BE_(registerVal17, {})
		local function __FUNC_46E9_(arg0, arg1)
			local function __FUNC_4863_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4863_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4863_)
		end

		registerVal18:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_46E9_(registerVal18, {})
		local function __FUNC_4A15_(arg0, arg1)
			local function __FUNC_4B8F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4B8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B8F_)
		end

		registerVal19:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_4A15_(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMContractsBJReadyWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal22.Focus = __FUNC_3D61_
	registerVal21.Activated = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Activated"
	local function __FUNC_4D41_(arg0, arg2, arg3)
		return IsBlackjackContractActive(arg1)
	end

	registerVal24.condition = __FUNC_4D41_
	registerVal23 = {registerVal24}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_4D9F_(arg0)
		arg0.BMContractsContractAmountWidget:close()
		arg0.BMContractsBJActivatedWidget:close()
		arg0.BMContractsCCWidget:close()
		arg0.BMContractsBJReadyWidget:close()
		arg0.SideBetTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4D9F_)
	if __FUNC_32B_ then
		__FUNC_32B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_Contracts_BlackjackInfoWidget.new = __FUNC_458_
