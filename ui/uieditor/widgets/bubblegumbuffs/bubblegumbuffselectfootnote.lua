-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.BubbleGumFootnote")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubblegumBuffSelectFootnote = registerVal1
function CoD.BubblegumBuffSelectFootnote.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubblegumBuffSelectFootnote)
	registerVal2.id = "BubblegumBuffSelectFootnote"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BubbleGumFootnote.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -512.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -96.000000, 0.000000)
	registerVal3.FootnoteTextBox:setText(Engine.Localize("MENU_BGB_CONSUMABLE_FOOTNOTE"))
	registerVal2:addElement(registerVal3)
	registerVal2.BubbleGumFootnote = registerVal3
	local registerVal4 = CoD.BubbleGumFootnote.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -512.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -96.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.FootnoteTextBox:setRGB(1.000000, 0.000000, 0.000000)
	local function __FUNC_8C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.FootnoteTextBox:setText(GetBGBDLCRequiredHint(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_8C6_)
	registerVal2:addElement(registerVal4)
	registerVal2.RequiresDLCFootnote = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9A8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BubbleGumFootnote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RequiresDLCFootnote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9A8_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B12_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BubbleGumFootnote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RequiresDLCFootnote:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B12_
	registerVal5.RequiresDLC = registerVal6
	registerVal6 = {}
	local function __FUNC_C7F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.FootnoteTextBox:completeAnimation()
		registerVal2.BubbleGumFootnote:setAlpha(1.000000)
		registerVal2.BubbleGumFootnote.FootnoteTextBox:setText(Engine.Localize("MENU_BGB_CONSUMABLE_FOOTNOTE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RequiresDLCFootnote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C7F_
	registerVal5.ConsumableAvailable = registerVal6
	registerVal6 = {}
	local function __FUNC_EB1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.FootnoteTextBox:completeAnimation()
		registerVal2.BubbleGumFootnote:setAlpha(1.000000)
		registerVal2.BubbleGumFootnote.FootnoteTextBox:setText(Engine.Localize("MENU_BGB_EMPTY_CONSUMABLE_FOOTNOTE"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RequiresDLCFootnote:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EB1_
	registerVal5.ConsumableNotAvailable = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "RequiresDLC"
	local function __FUNC_10EB_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_10EB_
	local registerVal9 = {}
	registerVal9.stateName = "ConsumableAvailable"
	local function __FUNC_1185_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1185_
	local registerVal10 = {}
	registerVal10.stateName = "ConsumableNotAvailable"
	local function __FUNC_122E_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_122E_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_12DA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_12DA_)
	local function __FUNC_13F7_(arg0)
		arg0.BubbleGumFootnote:close()
		arg0.RequiresDLCFootnote:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13F7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

