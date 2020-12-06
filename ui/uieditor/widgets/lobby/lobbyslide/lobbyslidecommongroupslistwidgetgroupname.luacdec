-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideCommonGroupsListWidgetGroupName = registerVal1
function CoD.LobbySlideCommonGroupsListWidgetGroupName.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideCommonGroupsListWidgetGroupName)
	registerVal2.id = "LobbySlideCommonGroupsListWidgetGroupName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRGB(1.000000, 0.830000, 0.500000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Name = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 200.000000, 219.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal4:setRGB(1.000000, 0.830000, 0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_favorites"))
	registerVal2:addElement(registerVal4)
	registerVal2.PrimaryGroupBadge = registerVal4
	local function __FUNC_94C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Name:linkToElementModel(registerVal2, "groupName", true, __FUNC_94C_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A06_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryGroupBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A06_
	local function __FUNC_B98_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryGroupBadge:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Active = __FUNC_B98_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CF8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 0.830000, 0.500000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryGroupBadge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CF8_
	local function __FUNC_E91_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryGroupBadge:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Active = __FUNC_E91_
	registerVal5.PrimaryGroup = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "PrimaryGroup"
	local function __FUNC_FEB_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "primaryGroup")
	end

	registerVal8.condition = __FUNC_FEB_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_1060_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "primaryGroup"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "primaryGroup", true, __FUNC_1060_)
	local function __FUNC_1182_(arg0)
		arg0.Name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1182_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

