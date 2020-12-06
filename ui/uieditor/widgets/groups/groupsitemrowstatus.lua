-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsItemRowStatus = registerVal1
function CoD.GroupsItemRowStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsItemRowStatus)
	registerVal2.id = "GroupsItemRowStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, true, -200.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRGB(0.280000, 0.590000, 0.990000)
	registerVal3:setText(Engine.Localize("GROUPS_ADMIN"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.MemberStatus = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_78C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MemberStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_78C_
	local function __FUNC_890_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_890_
	local function __FUNC_8F2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_8F2_
	local function __FUNC_952_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_952_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MemberStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9B2_
	local function __FUNC_AAF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_AAF_
	local function __FUNC_B0E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_B0E_
	local function __FUNC_B6E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_B6E_
	registerVal4.Admin = registerVal5
	registerVal5 = {}
	local function __FUNC_BCE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MemberStatus:setAlpha(1.000000)
		registerVal2.MemberStatus:setText(Engine.Localize("GROUPS_OWNER"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BCE_
	local function __FUNC_D44_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_D44_
	local function __FUNC_DA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_DA6_
	local function __FUNC_E06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_E06_
	registerVal4.Owner = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

