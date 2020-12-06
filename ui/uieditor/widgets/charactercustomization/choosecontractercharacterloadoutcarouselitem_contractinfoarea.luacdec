-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Blackjack.BlackJack_Activated")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea = registerVal1
function CoD.ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea)
	registerVal2.id = "ChooseContracterCharacterLoadoutCarouselItem_ContractInfoArea"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 189.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 63.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, -5.130000, 182.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 22.000000)
	registerVal3:setRGB(0.750000, 0.750000, 0.750000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACTS_DESC"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.desc = registerVal3
	local registerVal4 = CoD.BlackJack_Activated.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -24.500000, 210.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 47.000000)
	local function __FUNC_AAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.timeRemaining:setText(LocalizeIntoString("MPUI_BM_CONTRACTS_TIME_REMAINING", NumberAsTimeNoMS(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "activeTimeRemaining", true, __FUNC_AAA_)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackJackActivated = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -24.680000, 211.500000)
	registerVal5:setTopBottom(true, false, -7.050000, 55.930000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_activited_hover"))
	registerVal2:addElement(registerVal5)
	registerVal2.hover = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BD3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.desc:setRGB(0.750000, 0.750000, 0.750000)
		registerVal2.desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackJackActivated:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.hover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BD3_
	local function __FUNC_DB8_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_FF2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BlackJackActivated:setAlpha(0.000000)
		registerVal2.BlackJackActivated:setScale(2.000000)
		__FUNC_FF2_(registerVal4, {})
		local function __FUNC_11C3_(arg0, arg1)
			local function __FUNC_133B_(arg0, arg1)
				local function __FUNC_1490_(arg0, arg1)
					local function __FUNC_162E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.600000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_162E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_162E_)
				end

				if arg1.interrupted then
					__FUNC_1490_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1490_)
			end

			if arg1.interrupted then
				__FUNC_133B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133B_)
		end

		registerVal5:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_11C3_)
	end

	registerVal7.Activated = __FUNC_DB8_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1804_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackJackActivated:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.hover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1804_
	registerVal6.Activated = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Activated"
	local function __FUNC_19B8_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isActivated")
	end

	registerVal9.condition = __FUNC_19B8_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1A2F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isActivated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isActivated", true, __FUNC_1A2F_)
	local function __FUNC_1B4D_(arg0)
		arg0.BlackJackActivated:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B4D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

