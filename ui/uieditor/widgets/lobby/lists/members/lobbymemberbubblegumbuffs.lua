-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainerHighQuality")
require("ui.uieditor.widgets.BubbleGumBuffs.LobbyBubbleGumBuff")
require("ui.uieditor.widgets.CAC.GridItemConsumableLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberBubbleGumBuffs = registerVal1
function CoD.LobbyMemberBubbleGumBuffs.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberBubbleGumBuffs)
	registerVal2.id = "LobbyMemberBubbleGumBuffs"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainerHighQuality.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanelShaderContainer0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.370000, 0.370000, 0.370000)
	registerVal4:setAlpha(0.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackgroundImage = registerVal4
	local registerVal5 = CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 14.000000, 78.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 64.000000)
	local function __FUNC_12D2_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "bgb1", false, __FUNC_12D2_)
	local function __FUNC_1322_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.BubbleGumBuffImage:setImage(RegisterImage(GetItemImageFromIndexByMode(0.000000, registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "bgb1.itemIndex", true, __FUNC_1322_)
	registerVal2:addElement(registerVal5)
	registerVal2.BubbleGumBuff1 = registerVal5
	local registerVal6 = CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -96.000000, -32.000000)
	registerVal6:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_1432_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "bgb2", false, __FUNC_1432_)
	local function __FUNC_1482_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.BubbleGumBuffImage:setImage(RegisterImage(GetItemImageFromIndexByMode(0.000000, registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "bgb2.itemIndex", true, __FUNC_1482_)
	registerVal2:addElement(registerVal6)
	registerVal2.BubbleGumBuff2 = registerVal6
	local registerVal7 = CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal7:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_1592_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "bgb3", false, __FUNC_1592_)
	local function __FUNC_15E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.BubbleGumBuffImage:setImage(RegisterImage(GetItemImageFromIndexByMode(0.000000, registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "bgb3.itemIndex", true, __FUNC_15E2_)
	registerVal2:addElement(registerVal7)
	registerVal2.BubbleGumBuff3 = registerVal7
	local registerVal8 = CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, 32.000000, 96.000000)
	registerVal8:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_16F2_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "bgb4", false, __FUNC_16F2_)
	local function __FUNC_1742_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.BubbleGumBuffImage:setImage(RegisterImage(GetItemImageFromIndexByMode(0.000000, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "bgb4.itemIndex", true, __FUNC_1742_)
	registerVal2:addElement(registerVal8)
	registerVal2.BubbleGumBuff4 = registerVal8
	local registerVal9 = CoD.LobbyBubbleGumBuff.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 96.000000, 160.000000)
	registerVal9:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_1852_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "bgb5", false, __FUNC_1852_)
	local function __FUNC_18A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.BubbleGumBuffImage:setImage(RegisterImage(GetItemImageFromIndexByMode(0.000000, registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "bgb5.itemIndex", true, __FUNC_18A2_)
	registerVal2:addElement(registerVal9)
	registerVal2.BubbleGumBuff5 = registerVal9
	local registerVal10 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 9.000000, 31.000000)
	registerVal10:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal10:setScale(0.800000)
	local function __FUNC_19B2_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "bgb1", false, __FUNC_19B2_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Nocomsumable"
	local function __FUNC_1A02_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "remaining", 0.000000)
	end

	registerVal14.condition = __FUNC_1A02_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_1A81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "itemIndex", true, __FUNC_1A81_)
	local function __FUNC_1B9F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "remaining", true, __FUNC_1B9F_)
	registerVal2:addElement(registerVal10)
	registerVal2.ConsumableLabel1 = registerVal10
	local registerVal11 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 73.000000, 95.000000)
	registerVal11:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal11:setScale(0.800000)
	local function __FUNC_1CBB_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "bgb2", false, __FUNC_1CBB_)
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Nocomsumable"
	local function __FUNC_1D0A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "remaining", 0.000000)
	end

	registerVal15.condition = __FUNC_1D0A_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_1D89_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "itemIndex", true, __FUNC_1D89_)
	local function __FUNC_1EA7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "remaining", true, __FUNC_1EA7_)
	registerVal2:addElement(registerVal11)
	registerVal2.ConsumableLabel2 = registerVal11
	local registerVal12 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 137.000000, 159.000000)
	registerVal12:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal12:setScale(0.800000)
	local function __FUNC_1FC3_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "bgb3", false, __FUNC_1FC3_)
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Nocomsumable"
	local function __FUNC_2012_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "remaining", 0.000000)
	end

	registerVal16.condition = __FUNC_2012_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_2091_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "itemIndex", true, __FUNC_2091_)
	local function __FUNC_21AF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "remaining", true, __FUNC_21AF_)
	registerVal2:addElement(registerVal12)
	registerVal2.ConsumableLabel3 = registerVal12
	registerVal13 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 201.000000, 223.000000)
	registerVal13:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal13:setScale(0.800000)
	local function __FUNC_22CB_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "bgb4", false, __FUNC_22CB_)
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Nocomsumable"
	local function __FUNC_231A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "remaining", 0.000000)
	end

	registerVal17.condition = __FUNC_231A_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_2399_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "itemIndex", true, __FUNC_2399_)
	local function __FUNC_24B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "remaining", true, __FUNC_24B7_)
	registerVal2:addElement(registerVal13)
	registerVal2.ConsumableLabel4 = registerVal13
	registerVal14 = CoD.GridItemConsumableLabel.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 265.000000, 287.000000)
	registerVal14:setTopBottom(true, false, 5.750000, 23.750000)
	registerVal14:setScale(0.800000)
	local function __FUNC_25D3_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "bgb5", false, __FUNC_25D3_)
	registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Nocomsumable"
	local function __FUNC_2622_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "remaining", 0.000000)
	end

	registerVal18.condition = __FUNC_2622_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_26A1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "itemIndex", true, __FUNC_26A1_)
	local function __FUNC_27BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "remaining"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "remaining", true, __FUNC_27BF_)
	registerVal2:addElement(registerVal14)
	registerVal2.ConsumableLabel5 = registerVal14
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_28DB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal10:completeAnimation()
		registerVal2.ConsumableLabel1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ConsumableLabel2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ConsumableLabel3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ConsumableLabel4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ConsumableLabel5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_28DB_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_2B58_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal10:completeAnimation()
		registerVal2.ConsumableLabel1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ConsumableLabel2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ConsumableLabel3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ConsumableLabel4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ConsumableLabel5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2B58_
	registerVal15.IsSelf = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "IsSelf"
	local function __FUNC_2DD8_(arg0, arg2, arg3)
		return IsSelfItem(arg2, arg1)
	end

	registerVal18.condition = __FUNC_2DD8_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_2E2C_(arg0)
		arg0.FEButtonPanelShaderContainer0:close()
		arg0.BubbleGumBuff1:close()
		arg0.BubbleGumBuff2:close()
		arg0.BubbleGumBuff3:close()
		arg0.BubbleGumBuff4:close()
		arg0.BubbleGumBuff5:close()
		arg0.ConsumableLabel1:close()
		arg0.ConsumableLabel2:close()
		arg0.ConsumableLabel3:close()
		arg0.ConsumableLabel4:close()
		arg0.ConsumableLabel5:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2E2C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

