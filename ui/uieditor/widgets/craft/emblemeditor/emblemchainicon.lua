-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemChainIcon = registerVal1
function CoD.EmblemChainIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemChainIcon)
	registerVal2.id = "EmblemChainIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.topbar = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_emblem_chain"))
	registerVal2:addElement(registerVal4)
	registerVal2.linkIcon = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5F0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.topbar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.linkIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_5F0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_744_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.topbar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.linkIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_744_
	registerVal5.Show = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

