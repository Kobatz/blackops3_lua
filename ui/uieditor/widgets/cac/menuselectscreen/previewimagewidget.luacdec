-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PreviewImageWidget = registerVal1
function CoD.PreviewImageWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PreviewImageWidget)
	registerVal2.id = "PreviewImageWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1012.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 506.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -375.000000, 375.000000)
	registerVal3:setTopBottom(false, false, 253.000000, 613.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("extracam_3"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.090000, 1.000000, 0.910000)
	registerVal3:setShaderVector(1.000000, 0.100000, 0.150000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.image = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5C0_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6B8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setLeftRight(false, false, -145.000000, 145.000000)
		registerVal2.image:setTopBottom(false, false, -145.000000, 145.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6B8_
	registerVal4.Square = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

