-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.EquippedBubbleGumBuffButton")
local function __FUNC_232_(arg0, arg1)
	if CoD.useMouse then
		arg0.BubbleGumBuffs.m_mouseDisabled = true
	end
end

local function __FUNC_2D6_(arg0, arg1)
	__FUNC_232_(arg0, arg1)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.BubbleGumPackPreview = registerVal3
local function __FUNC_310_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumPackPreview)
	registerVal2.id = "BubbleGumPackPreview"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 568.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 453.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 568.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal3:setWidgetType(CoD.EquippedBubbleGumBuffButton)
	registerVal3:setHorizontalCount(5.000000)
	registerVal3:setSpacing(7.000000)
	registerVal3:setDataSource("BubbleGumBuffs")
	local function __FUNC_8AF_(arg0)
		UpdateDataSource(registerVal2, registerVal3, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, true, __FUNC_8AF_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_90A_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_90A_
	local registerVal8 = {}
	registerVal8.stateName = "New"
	local function __FUNC_98C_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_98C_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_A07_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "itemIndex", true, __FUNC_A07_)
	registerVal2:addElement(registerVal3)
	registerVal2.BubbleGumBuffs = registerVal3
	registerVal3.id = "BubbleGumBuffs"
	local function __FUNC_B23_(arg0, arg1)
		local registerVal2 = arg0.BubbleGumBuffs:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_B23_)
	local function __FUNC_C2A_(arg0)
		arg0.BubbleGumBuffs:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C2A_)
	if __FUNC_2D6_ then
		__FUNC_2D6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BubbleGumPackPreview.new = __FUNC_310_
