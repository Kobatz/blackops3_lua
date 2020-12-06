-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D4_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouse(true)
		arg0.m_preventFromBeingActive = true
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Slider_Item_Arrow = registerVal2
local function __FUNC_27F_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Slider_Item_Arrow)
	registerVal2.id = "StartMenu_Options_Slider_Item_Arrow"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_687_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_687_
	local function __FUNC_7B0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrow:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_7B0_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_967_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_967_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_1D4_ then
		__FUNC_1D4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_Slider_Item_Arrow.new = __FUNC_27F_
