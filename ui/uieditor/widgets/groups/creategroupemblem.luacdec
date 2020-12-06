-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CreateGroupEmblem = registerVal1
function CoD.CreateGroupEmblem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CreateGroupEmblem)
	registerVal2.id = "CreateGroupEmblem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 314.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 314.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_emblem_temp"))
	registerVal2:addElement(registerVal3)
	registerVal2.DefaultGroupEmblem = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_73C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupGroupEmblem(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "SelectedGroup", "groupId", __FUNC_73C_)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupEmblem = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7D9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DefaultGroupEmblem:setLeftRight(true, false, 0.000000, 500.000000)
		registerVal2.DefaultGroupEmblem:setTopBottom(true, false, 0.000000, 314.000000)
		registerVal2.DefaultGroupEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_7D9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_968_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DefaultGroupEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_968_
	registerVal5.DefaultGroupEmblem = registerVal6
	registerVal6 = {}
	local function __FUNC_A6D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DefaultGroupEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_A6D_
	registerVal5.ShowPlayerEmblem = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "DefaultGroupEmblem"
	local function __FUNC_B76_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_B76_
	local registerVal9 = {}
	registerVal9.stateName = "ShowPlayerEmblem"
	local function __FUNC_BC1_(arg0, arg2, arg3)
		local registerVal3 = IsEmblemEmpty(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_BC1_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_C17_(arg0)
		arg0.GroupEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C17_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

