-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ContractProgressWidget")
require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_timer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_WeeklyContractsWidget = registerVal1
function CoD.BM_Contracts_WeeklyContractsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_WeeklyContractsWidget)
	registerVal2.id = "BM_Contracts_WeeklyContractsWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 479.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.980000, -1.480000)
	registerVal3:setTopBottom(true, true, 2.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_daily_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.033717, 0.472222, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 136.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.160000, 2.000000)
	registerVal4:setTopBottom(true, false, -0.760000, 39.310000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_weekly"))
	registerVal2:addElement(registerVal4)
	registerVal2.Header = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 1.160000, -0.160000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.117233, 0.193103, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BackgroundCompleted = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 1.160000, -0.160000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal6:setShaderVector(0.000000, 0.117234, 0.193103, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Background0 = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, -231.250000, 232.750000)
	registerVal7:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal7:setWidgetType(CoD.BM_Contracts_ContractProgressWidget)
	registerVal7:setHorizontalCount(2.000000)
	registerVal7:setSpacing(0.000000)
	registerVal7:setDataSource("BlackMarketWeeklyContracts")
	registerVal2:addElement(registerVal7)
	registerVal2.ContractProgress = registerVal7
	local registerVal8 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -94.500000, -66.500000)
	registerVal8:setTopBottom(false, true, -38.260000, -10.260000)
	registerVal2:addElement(registerVal8)
	registerVal2.CryptokeyIcon = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -136.500000, 138.000000)
	registerVal9:setTopBottom(false, true, -50.000000, -42.000000)
	registerVal9:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.036430, 0.500374, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Divider0 = registerVal9
	local registerVal10 = CoD.BM_Contracts_timer.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 18.000000, 326.000000)
	registerVal10:setTopBottom(true, false, 9.240000, 28.280000)
	registerVal10.Weekly:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY"))
	registerVal10.Timer:setText(Engine.Localize("$(contractWeeklyRemaining)"))
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "HideTimer"
	local function __FUNC_2001_(arg0, arg2, arg3)
		local registerVal3 = AreWeeklyContractsValid(arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_2001_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "contractWeeklyAIndex")
	local function __FUNC_2061_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyAIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_2061_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "contractWeeklyBIndex")
	local function __FUNC_218A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyBIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_218A_)
	registerVal2:addElement(registerVal10)
	registerVal2.BMContractstimer = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -62.500000, -15.500000)
	registerVal11:setTopBottom(false, true, -34.260000, -14.260000)
	registerVal11:setRGB(0.460000, 0.800000, 0.750000)
	registerVal11:setText(DvarLocalizedIntoString("weekly_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ContractDesc0 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, 67.000000, 114.000000)
	registerVal12:setTopBottom(false, true, -34.260000, -14.260000)
	registerVal12:setRGB(0.460000, 0.800000, 0.750000)
	registerVal12:setText(DvarLocalizedIntoString("weekly_contract_blackjack_contract_reward_count", "PERKS_ITEMTEXT"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.ContractDesc1 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, 32.250000, 65.750000)
	registerVal13:setTopBottom(false, true, -41.010000, -7.510000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_contract_smallicon"))
	registerVal2:addElement(registerVal13)
	registerVal2.contractsIcon = registerVal13
	registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(false, false, -242.500000, 242.500000)
	registerVal14:setTopBottom(false, true, -172.000000, -153.000000)
	registerVal14:setRGB(0.460000, 0.800000, 0.750000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setText(LocalizeToUpperString("CONTRACT_NULL"))
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal14:setLetterSpacing(-0.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.InvalidContractName = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -200.000000, 200.000000)
	registerVal15:setTopBottom(false, true, -153.000000, -135.000000)
	registerVal15:setRGB(0.880000, 0.880000, 0.880000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setText(Engine.Localize("CONTRACT_NULL_DESC"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.InvalidContractDesc = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -5.000000, 7.000000)
	registerVal16:setTopBottom(true, true, -6.540000, 7.000000)
	registerVal16:setRGB(0.810000, 0.810000, 0.810000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice_white"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal16:setShaderVector(0.000000, 0.097760, 0.158134, 0.000000, 0.000000)
	registerVal16:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.NineSliceShaderImage = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal17:setTopBottom(true, false, -19.770000, 28.280000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow_white"))
	registerVal2:addElement(registerVal17)
	registerVal2.upperglow = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal18:setTopBottom(false, true, -3.750000, 36.250000)
	registerVal18:setRGB(0.710000, 0.710000, 0.710000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow_white"))
	registerVal2:addElement(registerVal18)
	registerVal2.lowerglow = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -47.000000, 2.000000)
	registerVal19:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal19:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal19)
	registerVal2.CompletedIcon = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_22B2_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_22B2_
	local function __FUNC_28BA_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_2EDF_(arg0, arg1)
			local function __FUNC_3057_(arg0, arg1)
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
				__FUNC_3057_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3057_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_2EDF_(registerVal16, {})
		local function __FUNC_3209_(arg0, arg1)
			local function __FUNC_3383_(arg0, arg1)
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
				__FUNC_3383_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3383_)
		end

		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_3209_(registerVal17, {})
		local function __FUNC_3535_(arg0, arg1)
			local function __FUNC_36AF_(arg0, arg1)
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
				__FUNC_36AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36AF_)
		end

		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_3535_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_28BA_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_3861_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_3861_
	local function __FUNC_3E6A_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_448F_(arg0, arg1)
			local function __FUNC_4607_(arg0, arg1)
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
				__FUNC_4607_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4607_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_448F_(registerVal16, {})
		local function __FUNC_47B9_(arg0, arg1)
			local function __FUNC_4933_(arg0, arg1)
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
				__FUNC_4933_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4933_)
		end

		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_47B9_(registerVal17, {})
		local function __FUNC_4AE5_(arg0, arg1)
			local function __FUNC_4C5F_(arg0, arg1)
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
				__FUNC_4C5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5F_)
		end

		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_4AE5_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_3E6A_
	registerVal20.InvalidContract = registerVal21
	registerVal21 = {}
	local function __FUNC_4E11_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_4E11_
	local function __FUNC_5447_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.Header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BackgroundCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Background0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Divider0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ContractDesc1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.contractsIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.InvalidContractName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.InvalidContractDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_5A98_(arg0, arg1)
			local function __FUNC_5C13_(arg0, arg1)
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
				__FUNC_5C13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C13_)
		end

		registerVal16:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_5A98_(registerVal16, {})
		local function __FUNC_5DC5_(arg0, arg1)
			local function __FUNC_5F3F_(arg0, arg1)
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
				__FUNC_5F3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F3F_)
		end

		registerVal17:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_5DC5_(registerVal17, {})
		local function __FUNC_60F1_(arg0, arg1)
			local function __FUNC_626B_(arg0, arg1)
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
				__FUNC_626B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_626B_)
		end

		registerVal18:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_60F1_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal21.Focus = __FUNC_5447_
	registerVal20.Completed = registerVal21
	registerVal2.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "InvalidContract"
	local function __FUNC_641D_(arg0, arg2, arg3)
		local registerVal3 = AreWeeklyContractsValid(arg1)
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_641D_
	local registerVal24 = {}
	registerVal24.stateName = "Completed"
	local function __FUNC_647D_(arg0, arg2, arg3)
		return AreWeeklyContractsComplete(arg1)
	end

	registerVal24.condition = __FUNC_647D_
	registerVal22 = {registerVal23, registerVal24}
	registerVal2:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "contractWeeklyAIndex")
	local function __FUNC_64DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyAIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal22, __FUNC_64DC_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "contractWeeklyBIndex")
	local function __FUNC_6606_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "contractWeeklyBIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal22, __FUNC_6606_)
	registerVal7.id = "ContractProgress"
	local function __FUNC_672E_(arg0)
		arg0.ContractProgress:close()
		arg0.CryptokeyIcon:close()
		arg0.BMContractstimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_672E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

