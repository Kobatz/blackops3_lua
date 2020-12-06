-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_FadeMask = registerVal1
function CoD.systemOverlay_FadeMask.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_FadeMask)
	registerVal2.id = "systemOverlay_FadeMask"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 328.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 191.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -164.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_mask_overlays_bkg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Mask = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 164.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_mask_overlays_bkg"))
	registerVal2:addElement(registerVal4)
	registerVal2.Mask0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5E4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_5E4_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

