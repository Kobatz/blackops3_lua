-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupLeaderboardTitle = registerVal1
function CoD.GroupLeaderboardTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupLeaderboardTitle)
	registerVal2.id = "GroupLeaderboardTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, -15.000000)
	registerVal3:setTopBottom(false, false, -18.000000, 7.000000)
	registerVal3:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal3:setText(Engine.Localize("$(groups.selectedGroup.lbHardcoreString)"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Hardcore = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -18.000000, 7.000000)
	registerVal4:setText(Engine.Localize("$(groups.selectedGroup.lbTypeString)/$(groups.selectedGroup.lbTimeFrameString)"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TypeAndTimeFrame = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B17_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_B17_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B76_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_B76_
	registerVal5.LeaderboardOptions = registerVal6
	registerVal6 = {}
	local function __FUNC_BD6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_BD6_
	registerVal5.NoLeaderboard = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "LeaderboardOptions"
	local function __FUNC_C36_(arg0, arg2, arg3)
		local registerVal3 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_LEADERBOARD)
		if registerVal3 then
			registerVal3 = IsGroupLeaderboardAvailable()
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_C36_
	local registerVal9 = {}
	registerVal9.stateName = "NoLeaderboard"
	local function __FUNC_D41_(arg0, arg1, arg2)
		local registerVal3 = IsGroupLeaderboardAvailable()
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_D41_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.selectedGroup.lbDef")
	local function __FUNC_DA1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbDef"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_DA1_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.selectedGroup.lbTimeFrame")
	local function __FUNC_ED0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbTimeFrame"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_ED0_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.selectedGroup.lbHardcore")
	local function __FUNC_1006_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbHardcore"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1006_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.selectedGroup.lbInitialized")
	local function __FUNC_1139_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.selectedGroup.lbInitialized"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1139_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

