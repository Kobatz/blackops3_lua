-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RestrictedItemWarning = registerVal1
function CoD.RestrictedItemWarning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RestrictedItemWarning)
	registerVal2.id = "RestrictedItemWarning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 44.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 37.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_warning"))
	registerVal2:addElement(registerVal3)
	registerVal2.RestrictedWarning = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_570_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.RestrictedWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_570_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_679_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.RestrictedWarning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_679_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

