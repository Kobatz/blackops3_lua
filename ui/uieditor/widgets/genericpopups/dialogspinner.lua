-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DialogSpinner = registerVal1
function CoD.DialogSpinner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.DialogSpinner)
	registerVal2.id = "DialogSpinner"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_loadingspinner_flipbook"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 28.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 22.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.SpinnerFlipbook = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5E2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.SpinnerFlipbook:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5E2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

