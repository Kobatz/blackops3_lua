-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_CallingCardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler_DarkOps")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MP_Stickerbook_DarkOps = registerVal1
function CoD.Challenges_MP_Stickerbook_DarkOps.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MP_Stickerbook_DarkOps)
	registerVal2.id = "Challenges_MP_Stickerbook_DarkOps"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 13.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 10.000000, 756.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 488.000000)
	registerVal3:setDataSource("DarkOpsCallingCards")
	registerVal3:setWidgetType(CoD.Challenges_CallingCardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(5.000000)
	registerVal3:setSpacing(13.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Locked"
	local function __FUNC_9F9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_9F9_
	local registerVal8 = {}
	registerVal8.stateName = "Classified"
	local function __FUNC_A45_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal8.condition = __FUNC_A45_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_AB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isLocked", true, __FUNC_AB8_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.Challenges_CallingCardProfiler_DarkOps.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -30.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardProfiler = registerVal4
	local function __FUNC_BD6_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_BD6_)
	registerVal3.id = "CallingCardGrid"
	local function __FUNC_C26_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C26_)
	local function __FUNC_D2F_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D2F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

