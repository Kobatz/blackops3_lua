-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TalkerWidgetBase")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TalkersWidget = registerVal1
function CoD.FE_TalkersWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TalkersWidget)
	registerVal2.id = "FE_TalkersWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 391.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 391.000000)
	registerVal3:setWidgetType(CoD.FE_TalkerWidgetBase)
	registerVal3:setVerticalCount(18.000000)
	registerVal3:setSpacing(5.000000)
	registerVal3:setDataSource("FrontendVoip")
	registerVal2:addElement(registerVal3)
	registerVal2.Talkers = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7EE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Talkers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7EE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8EB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Talkers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8EB_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_9E2_(arg0, arg1, arg2)
		return PregameActive()
	end

	registerVal7.condition = __FUNC_9E2_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.Pregame.state")
	local function __FUNC_A2F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A2F_)
	registerVal3.id = "Talkers"
	local function __FUNC_B59_(arg0)
		arg0.Talkers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B59_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

