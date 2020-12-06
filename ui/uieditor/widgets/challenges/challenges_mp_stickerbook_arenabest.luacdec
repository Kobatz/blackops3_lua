-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_CallingCardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MP_Stickerbook_ArenaBest = registerVal1
function CoD.Challenges_MP_Stickerbook_ArenaBest.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MP_Stickerbook_ArenaBest)
	registerVal2.id = "Challenges_MP_Stickerbook_ArenaBest"
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
	registerVal3:setWidgetType(CoD.Challenges_CallingCardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(5.000000)
	registerVal3:setSpacing(13.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("ArenaBestCallingCards")
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.Challenges_CallingCardProfiler.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -30.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_A5E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_A5E_
	local registerVal9 = {}
	registerVal9.stateName = "LockedOneTier"
	local function __FUNC_AA9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_AA9_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_AF5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isBMClassified", true, __FUNC_AF5_)
	local function __FUNC_C18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isLocked", true, __FUNC_C18_)
	local function __FUNC_D36_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideProgress"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "hideProgress", true, __FUNC_D36_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardProfiler = registerVal4
	local function __FUNC_E56_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_E56_)
	registerVal3.id = "CallingCardGrid"
	local function __FUNC_EA6_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_EA6_)
	local function __FUNC_FAF_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FAF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

