-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Contracts_PercentCompleteWidgetWithPips")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_timer")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_CommunityButton_TitleAndDesc")
local function __FUNC_2E5_(arg0, arg1)
	local function __FUNC_432_()
		arg0.PercentCompleteWidget.percentCompleteCircle:setShaderVector(0.000000, GetPromoCircleFill(arg1, 0.000000, 0.000000, 0.000000, 0.000000))
		arg0.PercentCompleteWidget.percentText:setText(Engine.Localize(GetPromoCirclePercentText("MPUI_PERCENT")))
	end

	local registerVal3 = CoD.GetThermometerProgress()
	if 0.000000 <= registerVal3 then
		__FUNC_432_()
	else
		local function __FUNC_5DD_(arg1)
			local registerVal1 = CoD.GetThermometerProgress()
			__FUNC_432_()
			if 0.000000 <= registerVal1 and arg0.thermometerUpdateTimer then
				arg0.thermometerUpdateTimer:close()
				arg0.thermometerUpdateTimer = nil
			end
		end

		registerVal3 = LUI.UITimer.newElementTimer(2000.000000, false, __FUNC_5DD_)
		arg0.thermometerUpdateTimer = registerVal3
		arg0:addElement(arg0.thermometerUpdateTimer)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_CommunityButton = registerVal2
local function __FUNC_6C6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_CommunityButton)
	registerVal2.id = "BM_Contracts_CommunityButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 358.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 217.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.320000, -1.500000)
	registerVal3:setTopBottom(true, true, 3.170000, -3.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_special_gradient"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.050822, 0.283249, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(18.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Gradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 4.000000, -1.500000)
	registerVal4:setTopBottom(true, false, 1.560000, 41.560000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_special"))
	registerVal2:addElement(registerVal4)
	registerVal2.header = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 2.320000, -1.500000)
	registerVal5:setTopBottom(true, true, 2.110000, -2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.158112, 0.261827, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Background = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 2.320000, -1.500000)
	registerVal6:setTopBottom(true, true, 1.560000, -2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe_completed"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal6:setShaderVector(0.000000, 0.158112, 0.261147, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BackgroundCompleted = registerVal6
	local registerVal7 = CoD.BM_Contracts_PercentCompleteWidgetWithPips.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 9.500000, 99.500000)
	registerVal7:setTopBottom(true, false, 40.070000, 130.070000)
	registerVal7:setScale(0.900000)
	registerVal7.percentCompleteCircle:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7.percentText:setText(Engine.Localize(""))
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "TwoPips"
	local function __FUNC_1BEB_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1BEB_
	local registerVal12 = {}
	registerVal12.stateName = "ThreePips"
	local function __FUNC_1C35_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1C35_
	local registerVal13 = {}
	registerVal13.stateName = "FourPips"
	local function __FUNC_1C81_(arg0, arg1, arg2)
		local registerVal3 = IsThermometerProgressEqualTo(1.000000)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1C81_
	local registerVal14 = {}
	registerVal14.stateName = "CompleteZeroPips"
	local function __FUNC_1CEB_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1CEB_
	local registerVal15 = {}
	registerVal15.stateName = "CompleteTwoPips"
	local function __FUNC_1D35_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_1D35_
	local registerVal16 = {}
	registerVal16.stateName = "CompleteThreePips"
	local function __FUNC_1D81_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_1D81_
	local registerVal17 = {}
	registerVal17.stateName = "CompleteFourPips"
	local function __FUNC_1DCD_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal17.condition = __FUNC_1DCD_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.PercentCompleteWidget = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 73.500000, 297.000000)
	registerVal8:setTopBottom(true, false, 132.070000, 140.060000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contract_divider"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.044743, 0.500376, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(10.000000, 4.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Divider = registerVal8
	local registerVal9 = CoD.BM_Contracts_timer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 21.000000, 329.000000)
	registerVal9:setTopBottom(true, false, 12.240000, 31.280000)
	registerVal9.Weekly:setText(Engine.Localize("MENU_TAB_COMMUNITY_CAPS"))
	registerVal9.Timer:setText(Engine.Localize("$(contractWeeklyRemaining)"))
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "HideTimer"
	local function __FUNC_1E33_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1E33_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.BMContractstimer = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal10:setTopBottom(true, true, -4.540000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal10:setShaderVector(0.000000, 0.131148, 0.211887, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.NineSliceShaderImage = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal11:setTopBottom(true, false, -17.770000, 30.280000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow"))
	registerVal2:addElement(registerVal11)
	registerVal2.upperglow = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal12:setTopBottom(false, true, -6.750000, 33.250000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow"))
	registerVal2:addElement(registerVal12)
	registerVal2.lowerglow = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -49.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 7.000000, 39.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal13)
	registerVal2.CompletedIcon = registerVal13
	registerVal14 = CoD.BM_Contracts_CommunityButton_TitleAndDesc.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 104.500000, 338.000000)
	registerVal14:setTopBottom(true, false, 56.560000, 74.560000)
	registerVal14.SpecialContractName:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_ZMHD_TITLE"))
	registerVal14.SpecialContractDesc:setText(Engine.Localize("MPUI_CONTRACTS_RTC_DESC"))
	registerVal2:addElement(registerVal14)
	registerVal2.TitleAndDesc = registerVal14
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_1E7C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.NineSliceShaderImage:setTopBottom(true, true, -4.540000, 4.000000)
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_1E7C_
	local function __FUNC_20C7_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_225C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_225C_(registerVal10, {})
		local function __FUNC_2411_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_2411_(registerVal11, {})
		local function __FUNC_25C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_25C5_(registerVal12, {})
	end

	registerVal16.GainFocus = __FUNC_20C7_
	local function __FUNC_2779_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2939_(arg0, arg1)
			local function __FUNC_2AB3_(arg0, arg1)
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
				__FUNC_2AB3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AB3_)
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_2939_(registerVal10, {})
		local function __FUNC_2C65_(arg0, arg1)
			local function __FUNC_2DDF_(arg0, arg1)
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
				__FUNC_2DDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDF_)
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_2C65_(registerVal11, {})
		local function __FUNC_2F91_(arg0, arg1)
			local function __FUNC_310B_(arg0, arg1)
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
				__FUNC_310B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_310B_)
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_2F91_(registerVal12, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal16.Focus = __FUNC_2779_
	local function __FUNC_32BD_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3454_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_3454_(registerVal10, {})
		local function __FUNC_3609_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_3609_(registerVal11, {})
		local function __FUNC_37BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_37BD_(registerVal12, {})
	end

	registerVal16.LoseFocus = __FUNC_32BD_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_3971_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.header:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.BMContractstimer:setLeftRight(true, false, 21.000000, 301.130000)
		registerVal2.BMContractstimer:setTopBottom(true, false, 12.240000, 31.280000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CompletedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_3971_
	local function __FUNC_3BFC_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3D94_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_3D94_(registerVal10, {})
		local function __FUNC_3F49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_3F49_(registerVal11, {})
		local function __FUNC_40FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_40FD_(registerVal12, {})
	end

	registerVal16.GainFocus = __FUNC_3BFC_
	local function __FUNC_42B1_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_4471_(arg0, arg1)
			local function __FUNC_45EB_(arg0, arg1)
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
				__FUNC_45EB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45EB_)
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_4471_(registerVal10, {})
		local function __FUNC_479D_(arg0, arg1)
			local function __FUNC_4917_(arg0, arg1)
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
				__FUNC_4917_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4917_)
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_479D_(registerVal11, {})
		local function __FUNC_4AC9_(arg0, arg1)
			local function __FUNC_4C43_(arg0, arg1)
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
				__FUNC_4C43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C43_)
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_4AC9_(registerVal12, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal16.Focus = __FUNC_42B1_
	local function __FUNC_4DF5_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_4F8C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_4F8C_(registerVal10, {})
		local function __FUNC_5141_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_5141_(registerVal11, {})
		local function __FUNC_52F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_52F5_(registerVal12, {})
	end

	registerVal16.LoseFocus = __FUNC_4DF5_
	registerVal15.Complete = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Complete"
	local function __FUNC_54A9_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal18.condition = __FUNC_54A9_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	registerVal14.id = "TitleAndDesc"
	local function __FUNC_550F_(arg0, arg1)
		local registerVal2 = arg0.TitleAndDesc:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_550F_)
	local function __FUNC_5614_(arg0)
		arg0.PercentCompleteWidget:close()
		arg0.BMContractstimer:close()
		arg0.TitleAndDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5614_)
	if __FUNC_2E5_ then
		__FUNC_2E5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_Contracts_CommunityButton.new = __FUNC_6C6_
