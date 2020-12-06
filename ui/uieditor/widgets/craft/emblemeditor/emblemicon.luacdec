-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemIcon = registerVal1
function CoD.EmblemIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemIcon)
	registerVal2.id = "EmblemIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.backgroundMask = registerVal4
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal5:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_6F5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupDrawDecalById(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "iconID", true, __FUNC_6F5_)
	registerVal2:addElement(registerVal5)
	registerVal2.drawIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_793_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.border:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.drawIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_793_
	local function __FUNC_91D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.drawIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_91D_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_AAE_(arg0)
		arg0.drawIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

