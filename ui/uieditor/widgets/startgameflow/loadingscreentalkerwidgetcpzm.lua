-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenTalkerContainerCPZM")
local function __FUNC_237_(arg0, arg1)
	local function __FUNC_2E2_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.LoadingScreenTalkerContainerCPZM:setupShowIfXUIDTalking(registerVal1)
		end
	end

	arg0.LoadingScreenTalkerContainerCPZM:linkToElementModel(arg0, "playerxuid", true, __FUNC_2E2_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenTalkerWidgetCPZM = registerVal2
local function __FUNC_3B9_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenTalkerWidgetCPZM)
	registerVal2.id = "LoadingScreenTalkerWidgetCPZM"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = CoD.LoadingScreenTalkerContainerCPZM.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 17.000000)
	local function __FUNC_6EC_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6EC_)
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingScreenTalkerContainerCPZM = registerVal3
	local function __FUNC_73E_(arg0)
		arg0.LoadingScreenTalkerContainerCPZM:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_73E_)
	if __FUNC_237_ then
		__FUNC_237_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LoadingScreenTalkerWidgetCPZM.new = __FUNC_3B9_
