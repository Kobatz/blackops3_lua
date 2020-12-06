-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumBuffDescription = registerVal1
function CoD.BubbleGumBuffDescription.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumBuffDescription)
	registerVal2.id = "BubbleGumBuffDescription"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal3:setTopBottom(false, true, 0.000000, 19.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(GetBGBSplitscreenWarning(arg1, registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_8A6_)
	registerVal2:addElement(registerVal3)
	registerVal2.SplitscreenDLCWarning = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_98C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetBGBDescription(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_98C_)
	local function __FUNC_A6D_(arg0, arg1)
		UpdateWidgetHeightToMultilineText(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_A6D_)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_ADC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.SplitscreenDLCWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_ADC_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BE9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.SplitscreenDLCWarning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_BE9_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_CF0_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		registerVal3 = IsBGBUnlockedForOtherSplitscreenPlayers(arg0, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsBGBItemLocked(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_CF0_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_DD0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_DD0_)
	local function __FUNC_EEF_(arg0)
		arg0.SplitscreenDLCWarning:close()
		arg0.TextBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EEF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

