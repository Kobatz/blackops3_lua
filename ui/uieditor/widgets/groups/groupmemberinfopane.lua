-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_InfoPane")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupMemberInfoPane = registerVal1
function CoD.GroupMemberInfoPane.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupMemberInfoPane)
	registerVal2.id = "GroupMemberInfoPane"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 723.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 485.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_InfoPane.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -4.000000, 719.000000)
	registerVal3:setTopBottom(true, false, 5.000000, 490.000000)
	local function __FUNC_764_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_764_)
	local function __FUNC_7B6_(arg0)
		registerVal3.presence:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_7B6_)
	registerVal2:addElement(registerVal3)
	registerVal2.InfoPane = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_824_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.InfoPane:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_824_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_91F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.InfoPane:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_91F_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_A1C_(arg0, arg2, arg3)
		return FetchGroupMembersResultsLoading(arg1)
	end

	registerVal7.condition = __FUNC_A1C_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "groups.fetchGroupMembersInProgress")
	local function __FUNC_A81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.fetchGroupMembersInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A81_)
	registerVal3.id = "InfoPane"
	local function __FUNC_BB8_(arg0)
		arg0.InfoPane:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BB8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

