-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSummaryStatus = registerVal1
function CoD.GroupsSummaryStatus.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 7.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSummaryStatus)
	registerVal2.id = "GroupsSummaryStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 50.880000)
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3:setRGB(0.520000, 0.840000, 0.150000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_956_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(GroupPrivacyToString(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "privacy", true, __FUNC_956_)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupPrivacy = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 57.880000, 320.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A34_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "creationTimestamp", true, __FUNC_A34_)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupCreateInfo = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AEE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupPrivacy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupCreateInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AEE_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C4D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.GroupCreateInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C4D_
	registerVal5.NoGroupSelected = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoGroupSelected"
	local function __FUNC_D53_(arg0, arg2, arg3)
		local registerVal3 = HasSelectedGroup(arg2, arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D53_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_DAE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "groupId", true, __FUNC_DAE_)
	local function __FUNC_EC9_(arg0)
		arg0.GroupPrivacy:close()
		arg0.GroupCreateInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EC9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

