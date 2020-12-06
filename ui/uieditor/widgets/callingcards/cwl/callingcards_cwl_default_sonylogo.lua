-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_cwl_default_sonyLogo = registerVal1
function CoD.CallingCards_cwl_default_sonyLogo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_cwl_default_sonyLogo)
	registerVal2.id = "CallingCards_cwl_default_sonyLogo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_cwl_default_sonylogo"))
	registerVal2:addElement(registerVal3)
	registerVal2.sonyLogo = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_582_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.sonyLogo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_582_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6AF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.sonyLogo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_6AF_
	registerVal4.visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

