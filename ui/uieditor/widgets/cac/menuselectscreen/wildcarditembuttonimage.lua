-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C8_(arg0, arg1, arg2)
	arg0.m_preventFromBeingCurrentNavFocus = true
	arg0.m_preventFromBeingCurrentMouseFocus = true
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.WildcardItemButtonImage = registerVal2
local function __FUNC_256_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WildcardItemButtonImage)
	registerVal2.id = "WildcardItemButtonImage"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 142.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -57.000000, 57.000000)
	registerVal3:setTopBottom(false, false, -61.000000, 62.350000)
	registerVal3:setAlpha(0.600000)
	local function __FUNC_6BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_6BE_)
	registerVal2:addElement(registerVal3)
	registerVal2.itemImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_770_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImage:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_770_
	local function __FUNC_871_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Focus = __FUNC_871_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_96C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImage:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_96C_
	local function __FUNC_A6D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Focus = __FUNC_A6D_
	registerVal4.ContextualWildcard = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_B68_(arg0)
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B68_)
	if __FUNC_1C8_ then
		__FUNC_1C8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WildcardItemButtonImage.new = __FUNC_256_
