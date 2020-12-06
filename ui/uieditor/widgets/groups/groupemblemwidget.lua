-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupEmblemWidget = registerVal1
function CoD.GroupEmblemWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupEmblemWidget)
	registerVal2.id = "GroupEmblemWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 244.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupEmblem = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal4:setTopBottom(false, false, -64.000000, 64.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(0.700000)
	registerVal4:setupSpinner()
	registerVal2:addElement(registerVal4)
	registerVal2.Spinner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_groups_default_emblem"))
	registerVal2:addElement(registerVal5)
	registerVal2.DefaultEmblem = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_898_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.DefaultEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_898_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_9FB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.DefaultEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9FB_
	registerVal6.DefaultGroupEmblem = registerVal7
	registerVal7 = {}
	local function __FUNC_B5B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.DefaultEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B5B_
	registerVal6.ShowGroupEmblem = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "DefaultGroupEmblem"
	local function __FUNC_CBB_(arg0, arg2, arg3)
		return IsGroupEmblemEmpty(arg2, arg1)
	end

	registerVal9.condition = __FUNC_CBB_
	local registerVal10 = {}
	registerVal10.stateName = "ShowGroupEmblem"
	local function __FUNC_D14_(arg0, arg2, arg3)
		local registerVal3 = IsGroupEmblemEmpty(arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_D14_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	if registerVal2.m_eventHandlers.group_emblem_updated then
		local function __FUNC_D74_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.group_emblem_updated(arg1, arg2)
		end

		registerVal2:registerEventHandler("group_emblem_updated", __FUNC_D74_)
	else
		registerVal2:registerEventHandler("group_emblem_updated", LUI.UIElement.updateState)
	end
	local function __FUNC_DFF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "groupId", true, __FUNC_DFF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

