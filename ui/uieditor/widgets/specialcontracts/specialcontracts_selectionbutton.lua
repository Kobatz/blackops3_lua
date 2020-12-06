-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_RewardImage")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_StateIndicator")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ActiveArrow")
require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_Timer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_SelectionButton = registerVal1
function CoD.SpecialContracts_SelectionButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_SelectionButton)
	registerVal2.id = "SpecialContracts_SelectionButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 162.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -0.680000, -1.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_bigframe"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.224288, 0.343558, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(56.000000, 56.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background0 = registerVal3
	local registerVal4 = CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -94.000000, 94.000000)
	registerVal4:setTopBottom(false, false, -52.000000, 52.000000)
	registerVal4:setScale(1.200000)
	local function __FUNC_173D_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_173D_)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -7.000000, 6.000000)
	registerVal5:setTopBottom(true, true, -7.000000, 7.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_hover_9slice"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.182510, 0.272727, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.NineSliceShaderImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal6:setTopBottom(true, false, -19.770000, 28.280000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow"))
	registerVal2:addElement(registerVal6)
	registerVal2.upperglow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -99.000000, 85.000000)
	registerVal7:setTopBottom(false, true, -2.750000, 37.250000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow"))
	registerVal2:addElement(registerVal7)
	registerVal2.lowerglow = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 14.500000, 217.500000)
	registerVal8:setTopBottom(true, false, 135.000000, 151.000000)
	registerVal8:setRGB(0.460000, 0.800000, 0.750000)
	registerVal8:setTTF("fonts/escom.ttf")
	local function __FUNC_178E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_178E_)
	registerVal2:addElement(registerVal8)
	registerVal2.name = registerVal8
	local registerVal9 = CoD.SpecialContracts_StateIndicator.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 8.500000, 88.500000)
	registerVal9:setTopBottom(true, false, 11.160000, 31.160000)
	local function __FUNC_1847_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1847_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Cost"
	local function __FUNC_1896_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNilOrZero(arg2, arg1, "cost")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1896_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_190D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "cost"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "cost", true, __FUNC_190D_)
	registerVal2:addElement(registerVal9)
	registerVal2.SpecialContractsStateIndicator = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 203.500000, 251.500000)
	registerVal10:setTopBottom(true, false, 3.250000, 35.250000)
	registerVal10:setImage(RegisterImage("uie_t7_bm_contracts_completed_ribbon"))
	registerVal2:addElement(registerVal10)
	registerVal2.Complted = registerVal10
	local registerVal11 = CoD.BM_Contracts_ActiveArrow.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -3.130000, 71.500000)
	registerVal11:setTopBottom(true, false, 3.250000, 31.250000)
	registerVal11.left:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_left"))
	registerVal11.center:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_center"))
	registerVal11.right:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_right"))
	registerVal11.Text:setText(Engine.Localize("MPUI_ACTIVE_CAPS"))
	registerVal2:addElement(registerVal11)
	registerVal2.ActiveArrow = registerVal11
	registerVal12 = CoD.SpecialContracts_Timer.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 15.500000, 234.500000)
	registerVal12:setTopBottom(true, false, 9.250000, 25.250000)
	local function __FUNC_1A26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.TriplePlayTimer:setText(LocalizeIntoString("MPUI_BM_PROMO_EXPIRES", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_trifecta_promo", __FUNC_1A26_)
	local function __FUNC_1B24_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.GrandSlamTimer:setText(LocalizeIntoString("MPUI_BM_PROMO_EXPIRES", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "AutoeventsBribeTimer", "autoevent_timer_grandslam", __FUNC_1B24_)
	local function __FUNC_1C23_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1C23_)
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "TriplePlay"
	local function __FUNC_1C72_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialContractTimerActive(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "category", "trifecta")
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_1C72_
	local registerVal17 = {}
	registerVal17.stateName = "GrandSlam"
	local function __FUNC_1D3F_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialContractTimerActive(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "category", "grand_slam")
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1D3F_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_1E0D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "category"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "category", true, __FUNC_1E0D_)
	registerVal2:addElement(registerVal12)
	registerVal2.Timer = registerVal12
	local function __FUNC_1F2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RewardImage:linkToElementModel(registerVal2, "image", true, __FUNC_1F2A_)
	local function __FUNC_1FFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ContractDesc0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.SpecialContractsStateIndicator:linkToElementModel(registerVal2, "cost", true, __FUNC_1FFB_)
	registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_20D5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Complted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_20D5_
	local function __FUNC_2300_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2498_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_2498_(registerVal5, {})
		local function __FUNC_264D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_264D_(registerVal6, {})
		local function __FUNC_2801_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_2801_(registerVal7, {})
	end

	registerVal14.GainFocus = __FUNC_2300_
	local function __FUNC_29B5_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2B4C_(arg0, arg1)
			local function __FUNC_2CC7_(arg0, arg1)
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
				__FUNC_2CC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC7_)
		end

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_2B4C_(registerVal5, {})
		local function __FUNC_2E79_(arg0, arg1)
			local function __FUNC_2FF3_(arg0, arg1)
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
				__FUNC_2FF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FF3_)
		end

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_2E79_(registerVal6, {})
		local function __FUNC_31A5_(arg0, arg1)
			local function __FUNC_331F_(arg0, arg1)
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
				__FUNC_331F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_331F_)
		end

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_31A5_(registerVal7, {})
	end

	registerVal14.Focus = __FUNC_29B5_
	local function __FUNC_34D1_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3668_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_3668_(registerVal5, {})
		local function __FUNC_381D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_381D_(registerVal6, {})
		local function __FUNC_39D1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_39D1_(registerVal7, {})
	end

	registerVal14.LoseFocus = __FUNC_34D1_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_3B85_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Complted:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_3B85_
	local function __FUNC_3E03_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3F98_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_3F98_(registerVal5, {})
		local function __FUNC_414D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_414D_(registerVal6, {})
		local function __FUNC_4301_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_4301_(registerVal7, {})
	end

	registerVal14.GainFocus = __FUNC_3E03_
	local function __FUNC_44B5_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_464C_(arg0, arg1)
			local function __FUNC_47C7_(arg0, arg1)
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
				__FUNC_47C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47C7_)
		end

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_464C_(registerVal5, {})
		local function __FUNC_4979_(arg0, arg1)
			local function __FUNC_4AF3_(arg0, arg1)
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
				__FUNC_4AF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AF3_)
		end

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_4979_(registerVal6, {})
		local function __FUNC_4CA5_(arg0, arg1)
			local function __FUNC_4E1F_(arg0, arg1)
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
				__FUNC_4E1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E1F_)
		end

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_4CA5_(registerVal7, {})
	end

	registerVal14.Focus = __FUNC_44B5_
	local function __FUNC_4FD1_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_5168_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_5168_(registerVal5, {})
		local function __FUNC_531D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_531D_(registerVal6, {})
		local function __FUNC_54D1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_54D1_(registerVal7, {})
	end

	registerVal14.LoseFocus = __FUNC_4FD1_
	registerVal13.AllComplete = registerVal14
	registerVal14 = {}
	local function __FUNC_5685_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Complted:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_5685_
	local function __FUNC_5903_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_5A98_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_5A98_(registerVal5, {})
		local function __FUNC_5C4D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_5C4D_(registerVal6, {})
		local function __FUNC_5E01_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_5E01_(registerVal7, {})
	end

	registerVal14.GainFocus = __FUNC_5903_
	local function __FUNC_5FB5_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_614C_(arg0, arg1)
			local function __FUNC_62C7_(arg0, arg1)
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
				__FUNC_62C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62C7_)
		end

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_614C_(registerVal5, {})
		local function __FUNC_6479_(arg0, arg1)
			local function __FUNC_65F3_(arg0, arg1)
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
				__FUNC_65F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65F3_)
		end

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_6479_(registerVal6, {})
		local function __FUNC_67A5_(arg0, arg1)
			local function __FUNC_691F_(arg0, arg1)
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
				__FUNC_691F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_691F_)
		end

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_67A5_(registerVal7, {})
	end

	registerVal14.Focus = __FUNC_5FB5_
	local function __FUNC_6AD1_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_6C68_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_6C68_(registerVal5, {})
		local function __FUNC_6E1D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_6E1D_(registerVal6, {})
		local function __FUNC_6FD1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_6FD1_(registerVal7, {})
	end

	registerVal14.LoseFocus = __FUNC_6AD1_
	registerVal13.Complete = registerVal14
	registerVal14 = {}
	local function __FUNC_7185_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.SpecialContractsStateIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Complted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_7185_
	local function __FUNC_73B0_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_7548_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(0.000000)
		__FUNC_7548_(registerVal5, {})
		local function __FUNC_76FD_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		__FUNC_76FD_(registerVal6, {})
		local function __FUNC_78B1_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		__FUNC_78B1_(registerVal7, {})
	end

	registerVal14.GainFocus = __FUNC_73B0_
	local function __FUNC_7A65_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_7BFC_(arg0, arg1)
			local function __FUNC_7D77_(arg0, arg1)
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
				__FUNC_7D77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D77_)
		end

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_7BFC_(registerVal5, {})
		local function __FUNC_7F29_(arg0, arg1)
			local function __FUNC_80A3_(arg0, arg1)
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
				__FUNC_80A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80A3_)
		end

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_7F29_(registerVal6, {})
		local function __FUNC_8255_(arg0, arg1)
			local function __FUNC_83CF_(arg0, arg1)
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
				__FUNC_83CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83CF_)
		end

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_8255_(registerVal7, {})
	end

	registerVal14.Focus = __FUNC_7A65_
	local function __FUNC_8581_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_8718_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.NineSliceShaderImage:setAlpha(1.000000)
		__FUNC_8718_(registerVal5, {})
		local function __FUNC_88CD_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_88CD_(registerVal6, {})
		local function __FUNC_8A81_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_8A81_(registerVal7, {})
	end

	registerVal14.LoseFocus = __FUNC_8581_
	registerVal13.Active = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "AllComplete"
	local function __FUNC_8C35_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_8C35_
	registerVal17 = {}
	registerVal17.stateName = "Complete"
	local function __FUNC_8C81_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal17.condition = __FUNC_8C81_
	local registerVal18 = {}
	registerVal18.stateName = "Active"
	local function __FUNC_8CF6_(arg0, arg2, arg3)
		return IsSpecialContractActive(registerVal2, arg2, arg1)
	end

	registerVal18.condition = __FUNC_8CF6_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_8D59_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isComplete", true, __FUNC_8D59_)
	local function __FUNC_8E78_(arg0)
		arg0.RewardImage:close()
		arg0.SpecialContractsStateIndicator:close()
		arg0.ActiveArrow:close()
		arg0.Timer:close()
		arg0.name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8E78_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

