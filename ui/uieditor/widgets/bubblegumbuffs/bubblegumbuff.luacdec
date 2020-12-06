-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemBGBGlow")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumBuff = registerVal1
function CoD.BubbleGumBuff.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumBuff)
	registerVal2.id = "BubbleGumBuff"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GridItemBGBGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -10.000000, 10.000000)
	registerVal3:setTopBottom(true, true, -10.000000, -35.000000)
	local function __FUNC_B3A_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_B3A_)
	registerVal2:addElement(registerVal3)
	registerVal2.GridItemBGBGlow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal4:setScale(0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.BubbleGumBuffImage = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal5:setTopBottom(true, false, 60.000000, LanguageOverrideNumber("mexicanspanish", 72.000000, LanguageOverrideNumber("spanish", 72.000000, LanguageOverrideNumber("russian", 72.000000, LanguageOverrideNumber("polish", 72.000000, LanguageOverrideNumber("german", 72.000000, 76.000000))))))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.BubbleGumBuffName = registerVal5
	local registerVal6 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 24.000000)
	registerVal6:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal6:setScale(0.800000)
	local function __FUNC_B8A_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_B8A_)
	local function __FUNC_BDA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ComsumableCountLabel:setText(Engine.Localize(GetConsumableCountFromIndex(arg1, registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_BDA_)
	registerVal2:addElement(registerVal6)
	registerVal2.ConsumableLabel = registerVal6
	local function __FUNC_CED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(GetItemImageFromIndex(registerVal1)))
		end
	end

	registerVal2.BubbleGumBuffImage:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_CED_)
	local function __FUNC_DC7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal2.BubbleGumBuffName:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_DC7_)
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_EA4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_EA4_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FA6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GridItemBGBGlow:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BubbleGumBuffImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_FA6_
	registerVal7.OutOfBubbleGum = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "OutOfBubbleGum"
	local function __FUNC_1110_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1110_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1185_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1185_)
	local function __FUNC_12A3_(arg0)
		arg0.GridItemBGBGlow:close()
		arg0.ConsumableLabel:close()
		arg0.BubbleGumBuffImage:close()
		arg0.BubbleGumBuffName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12A3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

