-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ContractProgressWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_timer")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_DoubleCryptokeys")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_DailyContractWidget = registerVal1
function CoD.BM_Contracts_DailyContractWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_DailyContractWidget)
	registerVal2.id = "BM_Contracts_DailyContractWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.660000, -2.340000)
	registerVal3:setTopBottom(true, true, -0.760000, 0.760000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_daily_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.087336, 0.480255, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(20.000000, 140.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal4:setTopBottom(true, false, -0.760000, 39.070000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_daily"))
	registerVal2:addElement(registerVal4)
	registerVal2.header = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -0.680000, -1.000000)
	registerVal5:setTopBottom(true, true, -1.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.241713, 0.192440, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BackgroundCompleted = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -0.680000, -1.000000)
	registerVal6:setTopBottom(true, true, -1.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal6:setShaderVector(0.000000, 0.241714, 0.192440, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Background0 = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, -115.340000, 116.660000)
	registerVal7:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal7:setWidgetType(CoD.BM_Contracts_ContractProgressWidget)
	registerVal7:setDataSource("BlackMarketDailyContracts")
	registerVal2:addElement(registerVal7)
	registerVal2.ContractProgress = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -50.500000, 50.500000)
	registerVal8:setTopBottom(false, true, -50.000000, -42.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.099012, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Divider = registerVal8
	local registerVal9 = CoD.BM_Contracts_timer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 14.000000, 139.000000)
	registerVal9:setTopBottom(true, false, 8.240000, 27.280000)
	registerVal9.Weekly:setText(Engine.Localize("MPUI_BM_CONTRACT_DAILY"))
	registerVal9.Timer:setText(Engine.Localize("$(contractDailyRemaining)"))
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "HideTimer"
	local function __FUNC_1750_(arg0, arg2, arg3)
		local registerVal3 = IsDailyContractValid(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1750_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "contractDailyIndex")
	local function __FUNC_17AE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractDailyIndex"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_17AE_)
	registerVal2:addElement(registerVal9)
	registerVal2.BMContractstimer = registerVal9
	local registerVal10 = CoD.BM_Contracts_DoubleCryptokeys.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -6.000000, 208.000000)
	registerVal10:setTopBottom(false, true, -72.760000, 15.240000)
	registerVal2:addElement(registerVal10)
	registerVal2.BMContractsDoubleCryptokeys0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -7.000000, 5.000000)
	registerVal11:setTopBottom(true, true, -7.540000, 7.000000)
	registerVal11:setRGB(0.810000, 0.810000, 0.810000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice_white"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal11:setShaderVector(0.000000, 0.196721, 0.157615, 0.000000, 0.000000)
	registerVal11:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.NineSliceShaderImage = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal12:setTopBottom(true, false, -20.770000, 27.280000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow_white"))
	registerVal2:addElement(registerVal12)
	registerVal2.upperglow = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal13:setTopBottom(false, true, -3.750000, 36.250000)
	registerVal13:setRGB(0.710000, 0.710000, 0.710000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow_white"))
	registerVal2:addElement(registerVal13)
	registerVal2.lowerglow = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -48.000000, 1.000000)
	registerVal14:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal14)
	registerVal2.CompletedIcon = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_18D4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_18D4_
	local function __FUNC_1C36_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_1FE7_(arg0, arg1)
			local function __FUNC_215F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_215F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215F_)
		end

		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_1FE7_(registerVal11, {})
		local function __FUNC_2335_(arg0, arg1)
			local function __FUNC_24AF_(arg0, arg1)
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
				__FUNC_24AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24AF_)
		end

		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_2335_(registerVal12, {})
		local function __FUNC_2661_(arg0, arg1)
			local function __FUNC_27DB_(arg0, arg1)
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
				__FUNC_27DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27DB_)
		end

		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_2661_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal16.Focus = __FUNC_1C36_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_298D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_298D_
	local function __FUNC_2D22_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_30D3_(arg0, arg1)
			local function __FUNC_324B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_324B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_324B_)
		end

		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_30D3_(registerVal11, {})
		local function __FUNC_3421_(arg0, arg1)
			local function __FUNC_359B_(arg0, arg1)
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
				__FUNC_359B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_359B_)
		end

		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_3421_(registerVal12, {})
		local function __FUNC_374D_(arg0, arg1)
			local function __FUNC_38C7_(arg0, arg1)
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
				__FUNC_38C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C7_)
		end

		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_374D_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal16.Focus = __FUNC_2D22_
	registerVal15.InvalidContract = registerVal16
	registerVal16 = {}
	local function __FUNC_3A79_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setLeftRight(false, true, -48.000000, 1.000000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 2.000000, 34.000000)
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_3A79_
	local function __FUNC_3F17_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.Divider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BMContractsDoubleCryptokeys0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_4404_(arg0, arg1)
			local function __FUNC_457F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_457F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_457F_)
		end

		registerVal11:completeAnimation()
		registerVal2.NineSliceShaderImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_4404_(registerVal11, {})
		local function __FUNC_4755_(arg0, arg1)
			local function __FUNC_48CF_(arg0, arg1)
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
				__FUNC_48CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48CF_)
		end

		registerVal12:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_4755_(registerVal12, {})
		local function __FUNC_4A81_(arg0, arg1)
			local function __FUNC_4BFB_(arg0, arg1)
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
				__FUNC_4BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BFB_)
		end

		registerVal13:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_4A81_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CompletedIcon:setLeftRight(false, true, -48.000000, 1.000000)
		registerVal2.CompletedIcon:setTopBottom(true, false, 2.000000, 34.000000)
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal16.Focus = __FUNC_3F17_
	registerVal15.Completed = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "InvalidContract"
	local function __FUNC_4DAD_(arg0, arg2, arg3)
		local registerVal3 = IsDailyContractValid(arg1)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_4DAD_
	local registerVal19 = {}
	registerVal19.stateName = "Completed"
	local function __FUNC_4E0A_(arg0, arg2, arg3)
		return IsDailyContractComplete(arg1)
	end

	registerVal19.condition = __FUNC_4E0A_
	registerVal17 = {registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "contractDailyIndex")
	local function __FUNC_4E65_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractDailyIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal17, __FUNC_4E65_)
	registerVal7.id = "ContractProgress"
	local function __FUNC_4F8C_(arg0)
		arg0.ContractProgress:close()
		arg0.BMContractstimer:close()
		arg0.BMContractsDoubleCryptokeys0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4F8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

