-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BundleGlow = registerVal1
function CoD.BM_BundleGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BundleGlow)
	registerVal2.id = "BM_BundleGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 472.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 168.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 472.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 168.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bundleglow_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Bribeglow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_50C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Bribeglow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_50C_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

