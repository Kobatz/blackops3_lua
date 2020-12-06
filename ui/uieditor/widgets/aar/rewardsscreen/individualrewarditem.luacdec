-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.NotificationQueueWidgets.NotificationRewardQueueWidgets.NotificationRewardBorder")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.AAR.RewardsScreen.IndividualRewardItemImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IndividualRewardItem = registerVal1
function CoD.IndividualRewardItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IndividualRewardItem)
	registerVal2.id = "IndividualRewardItem"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal3:setTopBottom(true, false, -0.500000, 59.500000)
	registerVal3:setRGB(0.070000, 0.070000, 0.070000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 56.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 56.000000)
	registerVal4:setRGB(0.270000, 0.270000, 0.270000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = CoD.NotificationRewardBorder.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 2.000000, 58.000000)
	registerVal5:setTopBottom(true, false, 1.500000, 57.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.NotificationRewardBorder = registerVal5
	local registerVal6 = CoD.Border.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -1.000000, 240.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 60.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Border = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 61.970000, 238.000000)
	registerVal7:setTopBottom(true, false, 10.500000, 30.500000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_D5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "rewardName", true, __FUNC_D5A_)
	registerVal2:addElement(registerVal7)
	registerVal2.RewardTitle = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 61.970000, 235.000000)
	registerVal8:setTopBottom(true, false, 30.500000, 48.500000)
	registerVal8:setRGB(0.580000, 0.580000, 0.580000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rewardDesc", true, __FUNC_E12_)
	local function __FUNC_ECA_(arg0, arg1)
		local registerVal2 = IsCurrentLanguageReversed()
		if not registerVal2 then
			ScaleWidgetToLabelWrapped(registerVal2, arg0, 1.000000, 1.000000)
		else
			registerVal2 = IsCurrentLanguageReversed()
			if registerVal2 then
				ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 1.000000)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_ECA_)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBox0 = registerVal8
	local registerVal9 = CoD.IndividualRewardItemImage.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 5.000000, 55.000000)
	registerVal9:setTopBottom(true, false, 4.500000, 54.500000)
	local function __FUNC_FB6_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_FB6_)
	registerVal2:addElement(registerVal9)
	registerVal2.IndividualRewardItemImage0 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1006_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.RewardTitle:setLeftRight(true, false, 61.970000, 238.000000)
		registerVal2.RewardTitle:setTopBottom(true, false, 10.500000, 30.500000)
		registerVal2.RewardTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IndividualRewardItemImage0:setLeftRight(true, false, 5.000000, 55.000000)
		registerVal2.IndividualRewardItemImage0:setTopBottom(true, false, 4.500000, 54.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1006_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_129D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.RewardTitle:setLeftRight(true, false, 61.970000, 238.000000)
		registerVal2.RewardTitle:setTopBottom(true, false, 19.500000, 39.500000)
		registerVal2.RewardTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IndividualRewardItemImage0:setLeftRight(true, false, 5.000000, 55.000000)
		registerVal2.IndividualRewardItemImage0:setTopBottom(true, false, 4.500000, 54.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_129D_
	registerVal10.NoDescription = registerVal11
	registerVal11 = {}
	local function __FUNC_153A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.RewardTitle:setLeftRight(true, false, 61.970000, 238.000000)
		registerVal2.RewardTitle:setTopBottom(true, false, 10.500000, 30.500000)
		registerVal2.RewardTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IndividualRewardItemImage0:setLeftRight(true, false, 1.000000, 59.000000)
		registerVal2.IndividualRewardItemImage0:setTopBottom(true, false, 0.500000, 58.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_153A_
	registerVal10.Incentive = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NoDescription"
	local function __FUNC_17CC_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rewardDesc")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_17CC_
	local registerVal14 = {}
	registerVal14.stateName = "Incentive"
	local function __FUNC_1850_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1850_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_189D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardDesc", true, __FUNC_189D_)
	local function __FUNC_19BC_(arg0)
		arg0.NotificationRewardBorder:close()
		arg0.Border:close()
		arg0.IndividualRewardItemImage0:close()
		arg0.RewardTitle:close()
		arg0.TextBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19BC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

