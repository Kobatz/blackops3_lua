-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMainPrimaryGroupBadge = registerVal1
function CoD.GroupsSocialMainPrimaryGroupBadge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMainPrimaryGroupBadge)
	registerVal2.id = "GroupsSocialMainPrimaryGroupBadge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 42.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
	registerVal3:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_favorites"))
	registerVal2:addElement(registerVal3)
	registerVal2.PrimaryIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_66E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PrimaryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_66E_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_76F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PrimaryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_76F_
	local function __FUNC_86A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_86A_
	local function __FUNC_8CA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_8CA_
	local function __FUNC_92A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_92A_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

