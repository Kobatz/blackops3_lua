-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_PercentCompleteWidget")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_RewardImage")
require("ui.uieditor.widgets.BlackMarket.BM_CompleteRibbon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_SpecialContractWidget = registerVal1
function CoD.BM_Contracts_SpecialContractWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_SpecialContractWidget)
	registerVal2.id = "BM_Contracts_SpecialContractWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 720.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 2.320000, 718.500000)
	registerVal3:setTopBottom(true, true, 3.170000, -3.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_special_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.025133, 0.345162, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(18.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.000000, 721.000000)
	registerVal4:setTopBottom(true, false, 1.560000, 41.560000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_special"))
	registerVal2:addElement(registerVal4)
	registerVal2.header = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 2.320000, -1.500000)
	registerVal5:setTopBottom(true, true, 2.110000, -2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.078193, 0.318389, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Background = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 2.320000, -1.500000)
	registerVal6:setTopBottom(true, true, 1.560000, -2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal6:setShaderVector(0.000000, 0.078193, 0.317383, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BackgroundCompleted = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 403.500000, 504.500000)
	registerVal7:setTopBottom(true, false, 100.560000, 108.550000)
	registerVal7:setZRot(90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.099012, 0.500375, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.DividerVertical = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 107.500000, 311.000000)
	registerVal8:setTopBottom(true, false, 107.250000, 115.240000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.049140, 0.500375, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.DividerHorizontal = registerVal8
	local registerVal9 = CoD.BM_Contracts_PercentCompleteWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 35.500000, 125.500000)
	registerVal9:setTopBottom(true, false, 58.560000, 148.560000)
	registerVal9:setScale(1.200000)
	registerVal9.percentCompleteCircle:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal9.percentText:setText(Engine.Localize("888/888"))
	local function __FUNC_21C8_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "CurrentSpecialContract", nil, __FUNC_21C8_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_221A_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal13.condition = __FUNC_221A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_228E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "isComplete", true, __FUNC_228E_)
	registerVal2:addElement(registerVal9)
	registerVal2.SpecialContractPercentCompleteWidget = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 143.250000, 445.000000)
	registerVal10:setTopBottom(true, false, 75.060000, 94.060000)
	registerVal10:setRGB(0.460000, 0.800000, 0.750000)
	registerVal10:setText(LocalizeToUpperString("MPUI_CONTRACTS_SPECIAL_TITLE_CAPS"))
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setLetterSpacing(-0.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.SpecialContractName = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 143.250000, 445.000000)
	registerVal11:setTopBottom(true, false, 94.060000, 112.060000)
	registerVal11:setRGB(0.880000, 0.880000, 0.880000)
	registerVal11:setText("")
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.SpecialContractDesc = registerVal11
	registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 19.500000, 311.000000)
	registerVal12:setTopBottom(true, false, 12.060000, 31.060000)
	registerVal12:setRGB(0.940000, 0.890000, 0.590000)
	registerVal12:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL"))
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setLetterSpacing(1.800000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.Title = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal13:setTopBottom(true, false, -17.770000, 30.280000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow"))
	registerVal2:addElement(registerVal13)
	registerVal2.upperglow = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal14:setTopBottom(false, true, -6.750000, 33.250000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow"))
	registerVal2:addElement(registerVal14)
	registerVal2.lowerglow = registerVal14
	local registerVal15 = CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 489.040000, 677.040000)
	registerVal15:setTopBottom(true, false, 52.250000, 156.250000)
	registerVal15.CallingCard.CardIconFrame:setScale(0.490000)
	local function __FUNC_23AC_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:subscribeToGlobalModel(arg1, "CurrentSpecialContract", nil, __FUNC_23AC_)
	local function __FUNC_23FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "CurrentSpecialContract", "image", __FUNC_23FE_)
	registerVal2:addElement(registerVal15)
	registerVal2.RewardImage = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -5.000000, 5.000000)
	registerVal16:setTopBottom(true, true, -4.540000, 4.000000)
	registerVal16:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal16:setShaderVector(0.000000, 0.065753, 0.254588, 0.000000, 0.000000)
	registerVal16:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.NineSliceShaderImage = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -48.000000, 1.000000)
	registerVal17:setTopBottom(true, false, 5.000000, 37.000000)
	registerVal17:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal17)
	registerVal2.CompletedIcon = registerVal17
	local registerVal18 = CoD.BM_CompleteRibbon.new(arg0, arg1)
	registerVal18:setLeftRight(false, true, -145.460000, -40.460000)
	registerVal18:setTopBottom(true, false, 8.500000, 32.500000)
	registerVal18.Text:setText(Engine.Localize("MPUI_BM_CONTRACTS_AVAILABLE"))
	registerVal2:addElement(registerVal18)
	registerVal2.BMCompleteRibbon = registerVal18
	local registerVal19 = CoD.BM_CompleteRibbon.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, -505.130000, -400.120000)
	registerVal19:setTopBottom(true, false, 8.500000, 32.500000)
	registerVal19:setAlpha(0.000000)
	registerVal19.Text:setText(Engine.Localize("MPUI_BM_CONTRACTS_AVAILABLE"))
	registerVal2:addElement(registerVal19)
	registerVal2.BMCompleteRibbon0 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_24CF_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.ItemImage:completeAnimation()
		registerVal15.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 489.040000, 677.040000)
		registerVal2.RewardImage:setTopBottom(true, false, 52.250000, 156.250000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(1.000000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.490000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_24CF_
	local function __FUNC_2EC8_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_34BE_(arg0, arg1)
			local function __FUNC_3637_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -126.130000, 122.130000)
				arg0:setTopBottom(true, false, -17.770000, 30.280000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3637_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3637_)
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_34BE_(registerVal13, {})
		local function __FUNC_3859_(arg0, arg1)
			local function __FUNC_39D3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -99.000000, 85.000000)
				arg0:setTopBottom(false, true, -6.750000, 33.250000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_39D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39D3_)
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_3859_(registerVal14, {})
		local function __FUNC_3BF5_(arg0, arg1)
			local function __FUNC_3D6F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -5.000000, 5.000000)
				arg0:setTopBottom(true, true, -4.540000, 4.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3D6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D6F_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_3BF5_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.Focus = __FUNC_2EC8_
	local function __FUNC_3F91_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_44CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -126.130000, 122.130000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_44CD_(registerVal13, {})
		local function __FUNC_46F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -99.000000, 85.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_46F1_(registerVal14, {})
		local function __FUNC_4915_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_4915_(registerVal16, {})
	end

	registerVal21.GainFocus = __FUNC_3F91_
	local function __FUNC_4B39_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_5075_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -126.130000, 122.130000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_5075_(registerVal13, {})
		local function __FUNC_5299_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -99.000000, 85.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_5299_(registerVal14, {})
		local function __FUNC_54BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_54BD_(registerVal16, {})
	end

	registerVal21.LoseFocus = __FUNC_4B39_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_56E1_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.RewardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_56E1_
	registerVal20.Hidden = registerVal21
	registerVal21 = {}
	local function __FUNC_5D5B_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -361.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 19.500000, 335.000000)
		registerVal2.Title:setTopBottom(true, false, 12.060000, 31.060000)
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.ItemImage:completeAnimation()
		registerVal15.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 118.650000, 251.850000)
		registerVal2.RewardImage:setTopBottom(true, false, 137.070000, 210.740000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(0.710000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.420000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_5D5B_
	local function __FUNC_6A8C_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_757D_(arg0, arg1)
			local function __FUNC_76F7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -306.130000, -57.880000)
				arg0:setTopBottom(true, false, -17.770000, 30.280000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_76F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76F7_)
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_757D_(registerVal13, {})
		local function __FUNC_7919_(arg0, arg1)
			local function __FUNC_7A93_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -279.000000, -95.000000)
				arg0:setTopBottom(false, true, -6.750000, 33.250000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7A93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A93_)
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_7919_(registerVal14, {})
		local function __FUNC_7CB5_(arg0, arg1)
			local function __FUNC_7E0C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -5.000000, -354.000000)
				arg0:setTopBottom(true, true, -4.540000, 4.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7E0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E0C_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.800000)
		__FUNC_7CB5_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_6A8C_
	local function __FUNC_8031_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_8A98_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -306.130000, -57.880000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_8A98_(registerVal13, {})
		local function __FUNC_8CBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -279.000000, -95.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_8CBD_(registerVal14, {})
		local function __FUNC_8EE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, -354.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_8EE1_(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.GainFocus = __FUNC_8031_
	local function __FUNC_9105_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_9B6C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -306.130000, -57.880000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_9B6C_(registerVal13, {})
		local function __FUNC_9D91_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -279.000000, -95.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_9D91_(registerVal14, {})
		local function __FUNC_9FB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, -354.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_9FB5_(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_9105_
	registerVal20.Short = registerVal21
	registerVal21 = {}
	local function __FUNC_A1D9_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 2.320000, 718.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 19.500000, 415.250000)
		registerVal2.Title:setTopBottom(true, false, 12.060000, 31.060000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.ItemImage:completeAnimation()
		registerVal15.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 489.040000, 677.040000)
		registerVal2.RewardImage:setTopBottom(true, false, 52.250000, 156.250000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(1.000000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.490000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_A1D9_
	local function __FUNC_AA7F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_AFE2_(arg0, arg1)
			local function __FUNC_B15B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -126.130000, 122.130000)
				arg0:setTopBottom(true, false, -17.770000, 30.280000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B15B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B15B_)
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_AFE2_(registerVal13, {})
		local function __FUNC_B37D_(arg0, arg1)
			local function __FUNC_B4F7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -99.000000, 85.000000)
				arg0:setTopBottom(false, true, -6.750000, 33.250000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B4F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4F7_)
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_B37D_(registerVal14, {})
		local function __FUNC_B719_(arg0, arg1)
			local function __FUNC_B893_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 830.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -5.000000, 5.000000)
				arg0:setTopBottom(true, true, -4.540000, 4.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B893_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B893_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_B719_(registerVal16, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_AA7F_
	local function __FUNC_BAB5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_BFF1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -126.130000, 122.130000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_BFF1_(registerVal13, {})
		local function __FUNC_C215_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -99.000000, 85.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_C215_(registerVal14, {})
		local function __FUNC_C439_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_C439_(registerVal16, {})
	end

	registerVal21.GainFocus = __FUNC_BAB5_
	local function __FUNC_C65D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_CB99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -126.130000, 122.130000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -126.130000, 122.130000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_CB99_(registerVal13, {})
		local function __FUNC_CDBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -99.000000, 85.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -99.000000, 85.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_CDBD_(registerVal14, {})
		local function __FUNC_CFE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, 5.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, 5.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_CFE1_(registerVal16, {})
	end

	registerVal21.LoseFocus = __FUNC_C65D_
	registerVal20.Completed = registerVal21
	registerVal21 = {}
	local function __FUNC_D205_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 19.500000, 197.000000)
		registerVal2.Title:setTopBottom(true, false, 12.060000, 31.060000)
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal15.ItemImage:completeAnimation()
		registerVal15.CallingCard.CardIconFrame:completeAnimation()
		registerVal2.RewardImage:setLeftRight(true, false, 118.650000, 251.850000)
		registerVal2.RewardImage:setTopBottom(true, false, 137.070000, 210.740000)
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.RewardImage.ItemImage:setScale(0.710000)
		registerVal2.RewardImage.CallingCard.CardIconFrame:setScale(0.420000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.CompletedIcon:setLeftRight(false, true, -407.750000, -358.750000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 5.560000, 37.560000)
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.BMCompleteRibbon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.BMCompleteRibbon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_D205_
	local function __FUNC_DFB3_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -361.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_EA03_(arg0, arg1)
			local function __FUNC_EB7B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -306.130000, -57.880000)
				arg0:setTopBottom(true, false, -17.770000, 30.280000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EB7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB7B_)
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_EA03_(registerVal13, {})
		local function __FUNC_ED9D_(arg0, arg1)
			local function __FUNC_EF17_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -279.000000, -95.000000)
				arg0:setTopBottom(false, true, -6.750000, 33.250000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EF17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF17_)
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_ED9D_(registerVal14, {})
		local function __FUNC_F139_(arg0, arg1)
			local function __FUNC_F2B3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -5.000000, -354.000000)
				arg0:setTopBottom(true, true, -4.540000, 4.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F2B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2B3_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_F139_(registerVal16, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_DFB3_
	local function __FUNC_F4D5_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -361.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_FEFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -306.130000, -57.880000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_FEFE_(registerVal13, {})
		local function __FUNC_10121_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -279.000000, -95.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_10121_(registerVal14, {})
		local function __FUNC_10345_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, -354.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_10345_(registerVal16, {})
	end

	registerVal21.GainFocus = __FUNC_F4D5_
	local function __FUNC_10569_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Gradient:setLeftRight(true, false, 2.320000, 358.500000)
		registerVal2.Gradient:setTopBottom(true, true, 3.170000, -3.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.header:setLeftRight(true, false, 1.000000, 359.000000)
		registerVal2.header:setTopBottom(true, false, 1.560000, 41.560000)
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Background:setLeftRight(true, true, 2.320000, -361.500000)
		registerVal2.Background:setTopBottom(true, true, 2.110000, -2.000000)
		registerVal2.Background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BackgroundCompleted:setLeftRight(true, true, 2.320000, -1.500000)
		registerVal2.BackgroundCompleted:setTopBottom(true, true, 1.560000, -2.000000)
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.BackgroundCompleted:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DividerVertical:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DividerHorizontal:setLeftRight(true, false, 73.500000, 297.000000)
		registerVal2.DividerHorizontal:setTopBottom(true, false, 132.070000, 140.060000)
		registerVal2.DividerHorizontal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractPercentCompleteWidget:setLeftRight(true, false, 8.880000, 98.880000)
		registerVal2.SpecialContractPercentCompleteWidget:setTopBottom(true, false, 41.560000, 131.560000)
		registerVal2.SpecialContractPercentCompleteWidget:setScale(0.900000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SpecialContractName:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractName:setTopBottom(true, false, 59.050000, 77.550000)
		registerVal2.SpecialContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SpecialContractDesc:setLeftRight(true, false, 102.250000, 343.750000)
		registerVal2.SpecialContractDesc:setTopBottom(true, false, 78.050000, 96.050000)
		registerVal2.SpecialContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_10F92_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -306.130000, -57.880000)
			arg0:setTopBottom(true, false, -17.770000, 30.280000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.upperglow:setLeftRight(false, false, -306.130000, -57.880000)
		registerVal2.upperglow:setTopBottom(true, false, -17.770000, 30.280000)
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_10F92_(registerVal13, {})
		local function __FUNC_111B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -279.000000, -95.000000)
			arg0:setTopBottom(false, true, -6.750000, 33.250000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.lowerglow:setLeftRight(false, false, -279.000000, -95.000000)
		registerVal2.lowerglow:setTopBottom(false, true, -6.750000, 33.250000)
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_111B5_(registerVal14, {})
		local function __FUNC_113D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -5.000000, -354.000000)
			arg0:setTopBottom(true, true, -4.540000, 4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -5.000000, -354.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_113D9_(registerVal16, {})
	end

	registerVal21.LoseFocus = __FUNC_10569_
	registerVal20.CompletedShort = registerVal21
	registerVal2.clipsPerState = registerVal20
	local function __FUNC_115FD_(arg0)
		arg0.SpecialContractPercentCompleteWidget:close()
		arg0.RewardImage:close()
		arg0.BMCompleteRibbon:close()
		arg0.BMCompleteRibbon0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_115FD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

