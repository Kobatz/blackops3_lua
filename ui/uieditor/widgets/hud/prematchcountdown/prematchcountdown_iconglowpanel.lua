-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown_IconGlowPanel = registerVal1
function CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown_IconGlowPanel)
	registerVal2.id = "PrematchCountdown_IconGlowPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 293.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 293.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -0.500000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.IconGlowPanel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_57C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_57C_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

