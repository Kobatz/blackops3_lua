-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialBackgroundWidget = registerVal1
function CoD.GroupsSocialBackgroundWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialBackgroundWidget)
	registerVal2.id = "GroupsSocialBackgroundWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 612.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 636.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_groups_globe_bkgd"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundGlobe = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_57B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_57B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_5DA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundGlobe:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5DA_
	registerVal4.Visible = registerVal5
	registerVal5 = {}
	local function __FUNC_6DF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundGlobe:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6DF_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

