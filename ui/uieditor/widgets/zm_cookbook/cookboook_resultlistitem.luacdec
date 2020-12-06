-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookBookIcon")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.ZM_Cookbook.ZM_Cookbook_RingWidget")
local function __FUNC_2C0_(arg0, arg1, arg2)
	local function __FUNC_337_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2 = Engine.GetUnlockableInfoModelByIndex(registerVal1, ("Unlockables." .. registerVal1), Enum.eModes.MODE_ZOMBIES)
		if registerVal2 then
			arg0.GobbleGumCookBookIcon:setModel(registerVal2)
		end
	end

	arg0:linkToElementModel(arg0, "itemIndex", true, __FUNC_337_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Cookboook_ResultListItem = registerVal2
local function __FUNC_4A5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Cookboook_ResultListItem)
	registerVal2.id = "Cookboook_ResultListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 340.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.GobbleGumCookBookIcon.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 62.500000, 243.500000)
	registerVal4:setTopBottom(true, false, 52.500000, 233.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.GobbleGumCookBookIcon = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.770000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -165.000000, 103.000000)
	registerVal6:setTopBottom(true, true, 128.500000, -182.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_E2F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "count", true, __FUNC_E2F_)
	registerVal2:addElement(registerVal6)
	registerVal2.Count = registerVal6
	local registerVal7 = CoD.ZM_Cookbook_RingWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 47.890000, 252.890000)
	registerVal7:setTopBottom(true, false, 40.500000, 245.500000)
	registerVal7:setAlpha(0.700000)
	registerVal7.ring:setShaderVector(0.000000, 0.700000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_EE6_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_EE6_)
	registerVal2:addElement(registerVal7)
	registerVal2.ZMCookbookRingWidget = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_F36_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.ZMCookbookRingWidget:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_F36_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1040_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.GobbleGumCookBookIcon:setAlpha(1.000000)
		registerVal2.GobbleGumCookBookIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.ZMCookbookRingWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1040_
	local function __FUNC_11E2_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1467_(arg0, arg1)
			local function __FUNC_15DF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Bounce)
				end
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, true, false, CoD.TweenType.Linear)
			arg0:setScale(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DF_)
		end

		registerVal4:beginAnimation("keyframe", 1139.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setScale(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_1467_)
		local function __FUNC_1791_(arg0, arg1)
			local function __FUNC_18E8_(arg0, arg1)
				local function __FUNC_1AEE_(arg0, arg1)
					local function __FUNC_1C44_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Linear)
							arg0.ring:beginAnimation("subkeyframe", 690.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0.ring:setShaderVector(0.000000, 0.870000, 0.870000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1C44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C44_)
				end

				if arg1.interrupted then
					__FUNC_1AEE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1009.000000, true, true, CoD.TweenType.Linear)
				arg0.ring:beginAnimation("subkeyframe", 1009.000000, true, true, CoD.TweenType.Linear)
				arg0.ring:setShaderVector(0.000000, 0.870000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEE_)
			end

			if arg1.interrupted then
				__FUNC_18E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E8_)
		end

		registerVal7:completeAnimation()
		registerVal7.ring:completeAnimation()
		registerVal2.ZMCookbookRingWidget:setAlpha(1.000000)
		registerVal2.ZMCookbookRingWidget.ring:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1791_(registerVal7, {})
	end

	registerVal9.Animate = __FUNC_11E2_
	registerVal8.RecipeResult = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "RecipeResult"
	local function __FUNC_1EA7_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "GobbleGumRecipe")
	end

	registerVal11.condition = __FUNC_1EA7_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal7.id = "ZMCookbookRingWidget"
	local function __FUNC_1F14_(arg0, arg1)
		local registerVal2 = arg0.ZMCookbookRingWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1F14_)
	local function __FUNC_2024_(arg0)
		arg0.GobbleGumCookBookIcon:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.ZMCookbookRingWidget:close()
		arg0.Count:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2024_)
	if __FUNC_2C0_ then
		__FUNC_2C0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Cookboook_ResultListItem.new = __FUNC_4A5_
