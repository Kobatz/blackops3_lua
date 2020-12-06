-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMainFrameYourGroupsLabel = registerVal1
function CoD.GroupsSocialMainFrameYourGroupsLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMainFrameYourGroupsLabel)
	registerVal2.id = "GroupsSocialMainFrameYourGroupsLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
	registerVal3:setText(Engine.Localize("GROUPS_YOUR_GROUPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.SelfGroupsLabel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal4:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("GROUPS_FRIENDS_GROUPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.FriendsGroupsLabel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AD7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.SelfGroupsLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FriendsGroupsLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AD7_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C3B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.SelfGroupsLabel:setLeftRight(true, false, 0.000000, 374.000000)
		registerVal2.SelfGroupsLabel:setTopBottom(true, false, 0.000000, 19.000000)
		registerVal2.SelfGroupsLabel:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
		registerVal2.SelfGroupsLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FriendsGroupsLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C3B_
	registerVal5.YourGroups = registerVal6
	registerVal6 = {}
	local function __FUNC_EED_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.SelfGroupsLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FriendsGroupsLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EED_
	registerVal5.FriendsGroups = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "YourGroups"
	local function __FUNC_1058_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "groups.groupCount_self", 0.000000)
	end

	registerVal8.condition = __FUNC_1058_
	local registerVal9 = {}
	registerVal9.stateName = "FriendsGroups"
	local function __FUNC_10E2_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "groups.groupCount_self", 0.000000)
		registerVal3 = IsModelValueGreaterThan(arg1, "groups.groupCount_search", 0.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "groups.searchGroupsInProgress")
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_10E2_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.groupCount_self")
	local function __FUNC_1222_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_self"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1222_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.groupCount_search")
	local function __FUNC_134C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.groupCount_search"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_134C_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.searchGroupsInProgress")
	local function __FUNC_147A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_147A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

