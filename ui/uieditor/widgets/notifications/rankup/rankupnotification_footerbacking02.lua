-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification_FooterBacking02 = registerVal1
function CoD.RankUpNotification_FooterBacking02.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification_FooterBacking02)
	registerVal2.id = "RankUpNotification_FooterBacking02"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 170.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notificaiton_footer_backing_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 80.000000, -80.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notificaiton_footer_backing_stretch"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -80.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notificaiton_footer_backing_right"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_71D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_71D_
	local function __FUNC_77E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.TimeUp = __FUNC_77E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

